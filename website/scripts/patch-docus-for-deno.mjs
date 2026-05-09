import { existsSync } from "node:fs";
import { lstat, readdir, readFile, symlink, writeFile } from "node:fs/promises";
import { join } from "node:path";
import { transform } from "esbuild";

const denoModulesDir = join(process.cwd(), "node_modules", ".deno");

if (!existsSync(denoModulesDir)) {
  process.exit(0);
}

const entries = await readdir(denoModulesDir, { withFileTypes: true });
const docusRoots = entries
  .filter((entry) => entry.isDirectory() && entry.name.startsWith("docus@"))
  .map((entry) => ({
    packageDir: entry.name,
    root: join(denoModulesDir, entry.name, "node_modules", "docus"),
  }));

if (docusRoots.length > 0) {
  await ensureTopLevelDocusLink(docusRoots[0].packageDir);
}

for (const { root: docusRoot } of docusRoots) {
  await patchAppConfig(join(docusRoot, "app", "app.config.ts"));
  await patchTypeScriptFiles(join(docusRoot, "server"));
  await patchTypeScriptFiles(join(docusRoot, "utils"));
  await patchTypeScriptFiles(join(docusRoot, "modules", "skills", "runtime", "server"));
  await patchTypeScriptFiles(join(docusRoot, "modules", "assistant", "runtime", "server"));
}

async function ensureTopLevelDocusLink(packageDir) {
  const linkPath = join(process.cwd(), "node_modules", "docus");

  try {
    const stat = await lstat(linkPath);

    if (stat.isSymbolicLink() || stat.isDirectory()) {
      return;
    }
  } catch (error) {
    if (error.code !== "ENOENT") {
      throw error;
    }
  }

  await symlink(join(".deno", packageDir, "node_modules", "docus"), linkPath, "dir");
}

async function patchAppConfig(path) {
  if (!existsSync(path)) {
    return;
  }

  const source = await readFile(path, "utf8");

  if (source.includes("/* patched-for-deno */")) {
    return;
  }

  await writeFile(
    path,
    `/* patched-for-deno */\nconst defineAppConfig = (config) => config;\n${source}`,
  );
}

async function patchTypeScriptFiles(dir) {
  if (!existsSync(dir)) {
    return;
  }

  const entries = await readdir(dir, { withFileTypes: true });

  for (const entry of entries) {
    const path = join(dir, entry.name);

    if (entry.isDirectory()) {
      await patchTypeScriptFiles(path);
      continue;
    }

    if (!entry.name.endsWith(".ts")) {
      continue;
    }

    const source = await readFile(path, "utf8");

    if (source.includes("/* patched-for-deno */")) {
      await patchServerRouteAutoImports(path, source);
      await patchMcpToolAutoImports(path, source);
      continue;
    }

    const result = await transform(source, {
      format: "esm",
      loader: "ts",
      sourcemap: false,
      target: "es2022",
    });

    const patchedSource = addMcpToolAutoImports(
      path,
      addServerRouteAutoImports(path, result.code),
    );

    await writeFile(path, `/* patched-for-deno */\n${patchedSource}`);
  }
}

async function patchMcpToolAutoImports(path, source) {
  const patchedSource = addMcpToolAutoImports(path, source);

  if (patchedSource !== source) {
    await writeFile(path, patchedSource);
  }
}

async function patchServerRouteAutoImports(path, source) {
  const patchedSource = addServerRouteAutoImports(path, source);

  if (patchedSource !== source) {
    await writeFile(path, patchedSource);
  }
}

function addServerRouteAutoImports(path, source) {
  if (!path.includes(join("server", "routes"))) {
    return source;
  }

  if (source.includes("nitropack/runtime")) {
    return source;
  }

  return [
    'import { defineEventHandler, setResponseHeader } from "h3";',
    'import { useRuntimeConfig } from "nitropack/runtime";',
    source,
  ].join("\n");
}

function addMcpToolAutoImports(path, source) {
  if (!path.includes(join("server", "mcp", "tools"))) {
    return source;
  }

  if (source.includes("@nuxtjs/mcp-toolkit/server")) {
    return source;
  }

  return [
    'import { defineMcpTool } from "@nuxtjs/mcp-toolkit/server";',
    'import { createError, getRequestURL } from "h3";',
    'import { useEvent, useRuntimeConfig } from "nitropack/runtime";',
    source,
  ].join("\n");
}
