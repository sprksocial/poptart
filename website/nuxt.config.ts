export default defineNuxtConfig({
  extends: ["docus"],

  site: {
    name: "Poptart",
    description:
      "Dart and Flutter SDK packages for AT Protocol, broad Lexicon APIs, OAuth, and protocol utilities.",
  },

  fonts: {
    providers: {
      google: false,
    },
  },

  icon: {
    provider: "none",
    clientBundle: {
      icons: [
        "lucide:alert-circle",
        "lucide:arrow-left",
        "lucide:arrow-right",
        "lucide:braces",
        "lucide:chevron-down",
        "lucide:copy",
        "lucide:hash",
        "lucide:moon",
        "lucide:package",
        "lucide:pen",
        "lucide:rocket",
        "lucide:search",
        "lucide:sun",
        "simple-icons:github",
      ],
    },
  },

  nitro: {
    prerender: {
      routes: [
        "/",
        "/getting-started",
        "/packages",
        "/lexicons",
        "/scenarios",
        "/oauth-sign-in",
        "/scripts-and-app-passwords",
        "/did-plc-lookups",
        "/primitive-validation",
        "/custom-xrpc-calls",
      ],
    },
  },

  compatibilityDate: "2026-05-07",
});
