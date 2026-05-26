// coverage:ignore-file
// ignore_for_file: type=lint
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Lexicon Docs Generator
// **************************************************************************

/// `com.atproto.temp.dereferenceScope`
const comAtprotoTempDereferenceScope = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.dereferenceScope",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Allows finding the oauth permission scope from a reference",
      "parameters": {
        "type": "params",
        "required": ["scope"],
        "properties": {
          "scope": {
            "type": "string",
            "description": "The scope reference (starts with 'ref:')",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["scope"],
          "properties": {
            "scope": {
              "type": "string",
              "description": "The full oauth permission scope",
            },
          },
        },
      },
      "errors": [
        {
          "name": "InvalidScopeReference",
          "description": "An invalid scope reference was provided.",
        },
      ],
    },
  },
};

/// `com.atproto.temp.addReservedHandle`
const comAtprotoTempAddReservedHandle = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.addReservedHandle",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Add a handle to the set of reserved handles.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["handle"],
          "properties": {
            "handle": {"type": "string"},
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {"type": "object", "properties": {}},
      },
    },
  },
};

/// `com.atproto.temp.checkSignupQueue`
const comAtprotoTempCheckSignupQueue = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.checkSignupQueue",
  "defs": {
    "main": {
      "type": "query",
      "description": "Check accounts location in signup queue.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["activated"],
          "properties": {
            "activated": {"type": "boolean"},
            "placeInQueue": {"type": "integer"},
            "estimatedTimeMs": {"type": "integer"},
          },
        },
      },
    },
  },
};

/// `com.atproto.temp.checkHandleAvailability`
const comAtprotoTempCheckHandleAvailability = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.checkHandleAvailability",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Checks whether the provided handle is available. If the handle is not available, available suggestions will be returned. Optional inputs will be used to generate suggestions.",
      "parameters": {
        "type": "params",
        "required": ["handle"],
        "properties": {
          "handle": {
            "type": "string",
            "format": "handle",
            "description":
                "Tentative handle. Will be checked for availability or used to build handle suggestions.",
          },
          "email": {
            "type": "string",
            "description":
                "User-provided email. Might be used to build handle suggestions.",
          },
          "birthDate": {
            "type": "string",
            "format": "datetime",
            "description":
                "User-provided birth date. Might be used to build handle suggestions.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["handle", "result"],
          "properties": {
            "handle": {
              "type": "string",
              "format": "handle",
              "description": "Echo of the input handle.",
            },
            "result": {
              "type": "union",
              "refs": ["#resultAvailable", "#resultUnavailable"],
            },
          },
        },
      },
      "errors": [
        {
          "name": "InvalidEmail",
          "description": "An invalid email was provided.",
        },
      ],
    },
    "resultAvailable": {
      "type": "object",
      "description": "Indicates the provided handle is available.",
      "properties": {},
    },
    "resultUnavailable": {
      "type": "object",
      "description":
          "Indicates the provided handle is unavailable and gives suggestions of available handles.",
      "required": ["suggestions"],
      "properties": {
        "suggestions": {
          "type": "array",
          "description":
              "List of suggested handles based on the provided inputs.",
          "items": {"type": "ref", "ref": "#suggestion"},
        },
      },
    },
    "suggestion": {
      "type": "object",
      "required": ["handle", "method"],
      "properties": {
        "handle": {"type": "string", "format": "handle"},
        "method": {
          "type": "string",
          "description":
              "Method used to build this suggestion. Should be considered opaque to clients. Can be used for metrics.",
        },
      },
    },
  },
};

/// `com.atproto.temp.requestPhoneVerification`
const comAtprotoTempRequestPhoneVerification = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.requestPhoneVerification",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Request a verification code to be sent to the supplied phone number",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["phoneNumber"],
          "properties": {
            "phoneNumber": {"type": "string"},
          },
        },
      },
    },
  },
};

/// `com.atproto.temp.revokeAccountCredentials`
const comAtprotoTempRevokeAccountCredentials = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.revokeAccountCredentials",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Revoke sessions, password, and app passwords associated with account. May be resolved by a password reset.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["account"],
          "properties": {
            "account": {"type": "string", "format": "at-identifier"},
          },
        },
      },
    },
  },
};

/// `com.atproto.temp.fetchLabels`
const comAtprotoTempFetchLabels = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.temp.fetchLabels",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "DEPRECATED: use queryLabels or subscribeLabels instead -- Fetch all labels from a labeler created after a certain date.",
      "parameters": {
        "type": "params",
        "properties": {
          "since": {"type": "integer"},
          "limit": {
            "type": "integer",
            "default": 50,
            "minimum": 1,
            "maximum": 250,
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["labels"],
          "properties": {
            "labels": {
              "type": "array",
              "items": {"type": "ref", "ref": "com.atproto.label.defs#label"},
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.identity.updateHandle`
const comAtprotoIdentityUpdateHandle = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.updateHandle",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Updates the current account's handle. Verifies handle validity, and updates did:plc document if necessary. Implemented by PDS, and requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["handle"],
          "properties": {
            "handle": {
              "type": "string",
              "format": "handle",
              "description": "The new handle.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.identity.defs`
const comAtprotoIdentityDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.defs",
  "defs": {
    "identityInfo": {
      "type": "object",
      "required": ["did", "handle", "didDoc"],
      "properties": {
        "did": {"type": "string", "format": "did"},
        "handle": {
          "type": "string",
          "format": "handle",
          "description":
              "The validated handle of the account; or 'handle.invalid' if the handle did not bi-directionally match the DID document.",
        },
        "didDoc": {
          "type": "unknown",
          "description": "The complete DID document for the identity.",
        },
      },
    },
  },
};

/// `com.atproto.identity.signPlcOperation`
const comAtprotoIdentitySignPlcOperation = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.signPlcOperation",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Signs a PLC operation to update some value(s) in the requesting DID's document.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "token": {
              "type": "string",
              "description":
                  "A token received through com.atproto.identity.requestPlcOperationSignature",
            },
            "rotationKeys": {
              "type": "array",
              "items": {"type": "string"},
            },
            "alsoKnownAs": {
              "type": "array",
              "items": {"type": "string"},
            },
            "verificationMethods": {"type": "unknown"},
            "services": {"type": "unknown"},
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["operation"],
          "properties": {
            "operation": {
              "type": "unknown",
              "description": "A signed DID PLC operation.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.identity.submitPlcOperation`
const comAtprotoIdentitySubmitPlcOperation = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.submitPlcOperation",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Validates a PLC operation to ensure that it doesn't violate a service's constraints or get the identity into a bad state, then submits it to the PLC registry",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["operation"],
          "properties": {
            "operation": {"type": "unknown"},
          },
        },
      },
    },
  },
};

/// `com.atproto.identity.resolveIdentity`
const comAtprotoIdentityResolveIdentity = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.resolveIdentity",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Resolves an identity (DID or Handle) to a full identity (DID document and verified handle).",
      "parameters": {
        "type": "params",
        "required": ["identifier"],
        "properties": {
          "identifier": {
            "type": "string",
            "format": "at-identifier",
            "description": "Handle or DID to resolve.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "com.atproto.identity.defs#identityInfo",
        },
      },
      "errors": [
        {
          "name": "HandleNotFound",
          "description":
              "The resolution process confirmed that the handle does not resolve to any DID.",
        },
        {
          "name": "DidNotFound",
          "description":
              "The DID resolution process confirmed that there is no current DID.",
        },
        {
          "name": "DidDeactivated",
          "description":
              "The DID previously existed, but has been deactivated.",
        },
      ],
    },
  },
};

/// `com.atproto.identity.refreshIdentity`
const comAtprotoIdentityRefreshIdentity = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.refreshIdentity",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Request that the server re-resolve an identity (DID and handle). The server may ignore this request, or require authentication, depending on the role, implementation, and policy of the server.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["identifier"],
          "properties": {
            "identifier": {"type": "string", "format": "at-identifier"},
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "com.atproto.identity.defs#identityInfo",
        },
      },
      "errors": [
        {
          "name": "HandleNotFound",
          "description":
              "The resolution process confirmed that the handle does not resolve to any DID.",
        },
        {
          "name": "DidNotFound",
          "description":
              "The DID resolution process confirmed that there is no current DID.",
        },
        {
          "name": "DidDeactivated",
          "description":
              "The DID previously existed, but has been deactivated.",
        },
      ],
    },
  },
};

/// `com.atproto.identity.resolveHandle`
const comAtprotoIdentityResolveHandle = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.resolveHandle",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Resolves an atproto handle (hostname) to a DID. Does not necessarily bi-directionally verify against the the DID document.",
      "parameters": {
        "type": "params",
        "required": ["handle"],
        "properties": {
          "handle": {
            "type": "string",
            "format": "handle",
            "description": "The handle to resolve.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did"],
          "properties": {
            "did": {"type": "string", "format": "did"},
          },
        },
      },
      "errors": [
        {
          "name": "HandleNotFound",
          "description":
              "The resolution process confirmed that the handle does not resolve to any DID.",
        },
      ],
    },
  },
};

/// `com.atproto.identity.requestPlcOperationSignature`
const comAtprotoIdentityRequestPlcOperationSignature = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.requestPlcOperationSignature",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Request an email with a code to in order to request a signed PLC operation. Requires Auth.",
    },
  },
};

/// `com.atproto.identity.getRecommendedDidCredentials`
const comAtprotoIdentityGetRecommendedDidCredentials = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.getRecommendedDidCredentials",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Describe the credentials that should be included in the DID doc of an account that is migrating to this service.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "rotationKeys": {
              "type": "array",
              "description":
                  "Recommended rotation keys for PLC dids. Should be undefined (or ignored) for did:webs.",
              "items": {"type": "string"},
            },
            "alsoKnownAs": {
              "type": "array",
              "items": {"type": "string"},
            },
            "verificationMethods": {"type": "unknown"},
            "services": {"type": "unknown"},
          },
        },
      },
    },
  },
};

/// `com.atproto.identity.resolveDid`
const comAtprotoIdentityResolveDid = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.identity.resolveDid",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Resolves DID to DID document. Does not bi-directionally verify handle.",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "DID to resolve.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["didDoc"],
          "properties": {
            "didDoc": {
              "type": "unknown",
              "description": "The complete DID document for the identity.",
            },
          },
        },
      },
      "errors": [
        {
          "name": "DidNotFound",
          "description":
              "The DID resolution process confirmed that there is no current DID.",
        },
        {
          "name": "DidDeactivated",
          "description":
              "The DID previously existed, but has been deactivated.",
        },
      ],
    },
  },
};

/// `com.atproto.admin.updateAccountEmail`
const comAtprotoAdminUpdateAccountEmail = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to update an account's email.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["account", "email"],
          "properties": {
            "account": {
              "type": "string",
              "format": "at-identifier",
              "description": "The handle or DID of the repo.",
            },
            "email": {"type": "string"},
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.getAccountInfo`
const comAtprotoAdminGetAccountInfo = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.getAccountInfo",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about an account.",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {"type": "string", "format": "did"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {"type": "ref", "ref": "com.atproto.admin.defs#accountView"},
      },
    },
  },
};

/// `com.atproto.admin.getSubjectStatus`
const comAtprotoAdminGetSubjectStatus = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.getSubjectStatus",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get the service-specific admin status of a subject (account, record, or blob).",
      "parameters": {
        "type": "params",
        "properties": {
          "did": {"type": "string", "format": "did"},
          "uri": {"type": "string", "format": "at-uri"},
          "blob": {"type": "string", "format": "cid"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["subject"],
          "properties": {
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
                "com.atproto.admin.defs#repoBlobRef",
              ],
            },
            "takedown": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr",
            },
            "deactivated": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.defs`
const comAtprotoAdminDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.defs",
  "defs": {
    "statusAttr": {
      "type": "object",
      "required": ["applied"],
      "properties": {
        "applied": {"type": "boolean"},
        "ref": {"type": "string"},
      },
    },
    "accountView": {
      "type": "object",
      "required": ["did", "handle", "indexedAt"],
      "properties": {
        "did": {"type": "string", "format": "did"},
        "handle": {"type": "string", "format": "handle"},
        "email": {"type": "string"},
        "relatedRecords": {
          "type": "array",
          "items": {"type": "unknown"},
        },
        "indexedAt": {"type": "string", "format": "datetime"},
        "invitedBy": {
          "type": "ref",
          "ref": "com.atproto.server.defs#inviteCode",
        },
        "invites": {
          "type": "array",
          "items": {"type": "ref", "ref": "com.atproto.server.defs#inviteCode"},
        },
        "invitesDisabled": {"type": "boolean"},
        "emailConfirmedAt": {"type": "string", "format": "datetime"},
        "inviteNote": {"type": "string"},
        "deactivatedAt": {"type": "string", "format": "datetime"},
        "threatSignatures": {
          "type": "array",
          "items": {"type": "ref", "ref": "#threatSignature"},
        },
      },
    },
    "repoRef": {
      "type": "object",
      "required": ["did"],
      "properties": {
        "did": {"type": "string", "format": "did"},
      },
    },
    "repoBlobRef": {
      "type": "object",
      "required": ["did", "cid"],
      "properties": {
        "did": {"type": "string", "format": "did"},
        "cid": {"type": "string", "format": "cid"},
        "recordUri": {"type": "string", "format": "at-uri"},
      },
    },
    "threatSignature": {
      "type": "object",
      "required": ["property", "value"],
      "properties": {
        "property": {"type": "string"},
        "value": {"type": "string"},
      },
    },
  },
};

/// `com.atproto.admin.searchAccounts`
const comAtprotoAdminSearchAccounts = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.searchAccounts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get list of accounts that matches your search query.",
      "parameters": {
        "type": "params",
        "properties": {
          "email": {"type": "string"},
          "cursor": {"type": "string"},
          "limit": {
            "type": "integer",
            "default": 50,
            "minimum": 1,
            "maximum": 100,
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["accounts"],
          "properties": {
            "cursor": {"type": "string"},
            "accounts": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.admin.defs#accountView",
              },
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.updateAccountPassword`
const comAtprotoAdminUpdateAccountPassword = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Update the password for a user account as an administrator.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did", "password"],
          "properties": {
            "did": {"type": "string", "format": "did"},
            "password": {"type": "string"},
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.updateAccountHandle`
const comAtprotoAdminUpdateAccountHandle = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountHandle",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to update an account's handle.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did", "handle"],
          "properties": {
            "did": {"type": "string", "format": "did"},
            "handle": {"type": "string", "format": "handle"},
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.getInviteCodes`
const comAtprotoAdminGetInviteCodes = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.getInviteCodes",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get an admin view of invite codes.",
      "parameters": {
        "type": "params",
        "properties": {
          "sort": {
            "type": "string",
            "default": "recent",
            "knownValues": ["recent", "usage"],
          },
          "limit": {
            "type": "integer",
            "default": 100,
            "minimum": 1,
            "maximum": 500,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["codes"],
          "properties": {
            "cursor": {"type": "string"},
            "codes": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.server.defs#inviteCode",
              },
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.updateAccountSigningKey`
const comAtprotoAdminUpdateAccountSigningKey = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.updateAccountSigningKey",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Administrative action to update an account's signing key in their Did document.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did", "signingKey"],
          "properties": {
            "did": {"type": "string", "format": "did"},
            "signingKey": {
              "type": "string",
              "format": "did",
              "description": "Did-key formatted public key",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.enableAccountInvites`
const comAtprotoAdminEnableAccountInvites = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.enableAccountInvites",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Re-enable an account's ability to receive invite codes.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["account"],
          "properties": {
            "account": {"type": "string", "format": "did"},
            "note": {
              "type": "string",
              "description": "Optional reason for enabled invites.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.disableAccountInvites`
const comAtprotoAdminDisableAccountInvites = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.disableAccountInvites",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Disable an account from receiving new invite codes, but does not invalidate existing codes.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["account"],
          "properties": {
            "account": {"type": "string", "format": "did"},
            "note": {
              "type": "string",
              "description": "Optional reason for disabled invites.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.disableInviteCodes`
const comAtprotoAdminDisableInviteCodes = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.disableInviteCodes",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Disable some set of codes and/or all codes associated with a set of users.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "codes": {
              "type": "array",
              "items": {"type": "string"},
            },
            "accounts": {
              "type": "array",
              "items": {"type": "string"},
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.updateSubjectStatus`
const comAtprotoAdminUpdateSubjectStatus = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.updateSubjectStatus",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Update the service-specific admin status of a subject (account, record, or blob).",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["subject"],
          "properties": {
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
                "com.atproto.admin.defs#repoBlobRef",
              ],
            },
            "takedown": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr",
            },
            "deactivated": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["subject"],
          "properties": {
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
                "com.atproto.admin.defs#repoBlobRef",
              ],
            },
            "takedown": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.sendEmail`
const comAtprotoAdminSendEmail = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.sendEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Send email to a user's account email address.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["recipientDid", "content", "senderDid"],
          "properties": {
            "recipientDid": {"type": "string", "format": "did"},
            "content": {"type": "string"},
            "subject": {"type": "string"},
            "senderDid": {"type": "string", "format": "did"},
            "comment": {
              "type": "string",
              "description":
                  "Additional comment by the sender that won't be used in the email itself but helpful to provide more context for moderators/reviewers",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["sent"],
          "properties": {
            "sent": {"type": "boolean"},
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.getAccountInfos`
const comAtprotoAdminGetAccountInfos = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.getAccountInfos",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about some accounts.",
      "parameters": {
        "type": "params",
        "required": ["dids"],
        "properties": {
          "dids": {
            "type": "array",
            "items": {"type": "string", "format": "did"},
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["infos"],
          "properties": {
            "infos": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.admin.defs#accountView",
              },
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.admin.deleteAccount`
const comAtprotoAdminDeleteAccount = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.admin.deleteAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete a user account as an administrator.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did"],
          "properties": {
            "did": {"type": "string", "format": "did"},
          },
        },
      },
    },
  },
};

/// `com.atproto.label.subscribeLabels`
const comAtprotoLabelSubscribeLabels = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.label.subscribeLabels",
  "defs": {
    "main": {
      "type": "subscription",
      "description":
          "Subscribe to stream of labels (and negations). Public endpoint implemented by mod services. Uses same sequencing scheme as repo event stream.",
      "parameters": {
        "type": "params",
        "properties": {
          "cursor": {
            "type": "integer",
            "description": "The last known event seq number to backfill from.",
          },
        },
      },
      "message": {
        "schema": {
          "type": "union",
          "refs": ["#labels", "#info"],
        },
      },
      "errors": [
        {"name": "FutureCursor"},
      ],
    },
    "labels": {
      "type": "object",
      "required": ["seq", "labels"],
      "properties": {
        "seq": {"type": "integer"},
        "labels": {
          "type": "array",
          "items": {"type": "ref", "ref": "com.atproto.label.defs#label"},
        },
      },
    },
    "info": {
      "type": "object",
      "required": ["name"],
      "properties": {
        "name": {
          "type": "string",
          "knownValues": ["OutdatedCursor"],
        },
        "message": {"type": "string"},
      },
    },
  },
};

/// `com.atproto.label.defs`
const comAtprotoLabelDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.label.defs",
  "defs": {
    "label": {
      "type": "object",
      "description":
          "Metadata tag on an atproto resource (eg, repo or record).",
      "required": ["src", "uri", "val", "cts"],
      "properties": {
        "ver": {
          "type": "integer",
          "description": "The AT Protocol version of the label object.",
        },
        "src": {
          "type": "string",
          "format": "did",
          "description": "DID of the actor who created this label.",
        },
        "uri": {
          "type": "string",
          "format": "uri",
          "description":
              "AT URI of the record, repository (account), or other resource that this label applies to.",
        },
        "cid": {
          "type": "string",
          "format": "cid",
          "description":
              "Optionally, CID specifying the specific version of 'uri' resource this label applies to.",
        },
        "val": {
          "type": "string",
          "description":
              "The short string name of the value or type of this label.",
          "maxLength": 128,
        },
        "neg": {
          "type": "boolean",
          "description":
              "If true, this is a negation label, overwriting a previous label.",
        },
        "cts": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp when this label was created.",
        },
        "exp": {
          "type": "string",
          "format": "datetime",
          "description":
              "Timestamp at which this label expires (no longer applies).",
        },
        "sig": {
          "type": "bytes",
          "description": "Signature of dag-cbor encoded label.",
        },
      },
    },
    "selfLabels": {
      "type": "object",
      "description":
          "Metadata tags on an atproto record, published by the author within the record.",
      "required": ["values"],
      "properties": {
        "values": {
          "type": "array",
          "items": {"type": "ref", "ref": "#selfLabel"},
          "maxLength": 10,
        },
      },
    },
    "selfLabel": {
      "type": "object",
      "description":
          "Metadata tag on an atproto record, published by the author within the record. Note that schemas should use #selfLabels, not #selfLabel.",
      "required": ["val"],
      "properties": {
        "val": {
          "type": "string",
          "description":
              "The short string name of the value or type of this label.",
          "maxLength": 128,
        },
      },
    },
    "labelValueDefinition": {
      "type": "object",
      "description":
          "Declares a label value and its expected interpretations and behaviors.",
      "required": ["identifier", "severity", "blurs", "locales"],
      "properties": {
        "identifier": {
          "type": "string",
          "description":
              "The value of the label being defined. Must only include lowercase ascii and the '-' character ([a-z-]+).",
          "maxLength": 100,
          "maxGraphemes": 100,
        },
        "severity": {
          "type": "string",
          "description":
              "How should a client visually convey this label? 'inform' means neutral and informational; 'alert' means negative and warning; 'none' means show nothing.",
          "knownValues": ["inform", "alert", "none"],
        },
        "blurs": {
          "type": "string",
          "description":
              "What should this label hide in the UI, if applied? 'content' hides all of the target; 'media' hides the images/video/audio; 'none' hides nothing.",
          "knownValues": ["content", "media", "none"],
        },
        "defaultSetting": {
          "type": "string",
          "description": "The default setting for this label.",
          "default": "warn",
          "knownValues": ["ignore", "warn", "hide"],
        },
        "adultOnly": {
          "type": "boolean",
          "description":
              "Does the user need to have adult content enabled in order to configure this label?",
        },
        "locales": {
          "type": "array",
          "items": {"type": "ref", "ref": "#labelValueDefinitionStrings"},
        },
      },
    },
    "labelValueDefinitionStrings": {
      "type": "object",
      "description":
          "Strings which describe the label in the UI, localized into a specific language.",
      "required": ["lang", "name", "description"],
      "properties": {
        "lang": {
          "type": "string",
          "format": "language",
          "description":
              "The code of the language these strings are written in.",
        },
        "name": {
          "type": "string",
          "description": "A short human-readable name for the label.",
          "maxLength": 640,
          "maxGraphemes": 64,
        },
        "description": {
          "type": "string",
          "description":
              "A longer description of what the label means and why it might be applied.",
          "maxLength": 100000,
          "maxGraphemes": 10000,
        },
      },
    },
    "labelValue": {
      "type": "string",
      "knownValues": [
        "!hide",
        "!warn",
        "!no-unauthenticated",
        "porn",
        "sexual",
        "nudity",
        "graphic-media",
        "bot",
      ],
    },
  },
};

/// `com.atproto.label.queryLabels`
const comAtprotoLabelQueryLabels = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.label.queryLabels",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Find labels relevant to the provided AT-URI patterns. Public endpoint for moderation services, though may return different or additional results with auth.",
      "parameters": {
        "type": "params",
        "required": ["uriPatterns"],
        "properties": {
          "uriPatterns": {
            "type": "array",
            "description":
                "List of AT URI patterns to match (boolean 'OR'). Each may be a prefix (ending with '*'; will match inclusive of the string leading to '*'), or a full URI.",
            "items": {"type": "string"},
          },
          "sources": {
            "type": "array",
            "description":
                "Optional list of label sources (DIDs) to filter on.",
            "items": {"type": "string", "format": "did"},
          },
          "limit": {
            "type": "integer",
            "default": 50,
            "minimum": 1,
            "maximum": 250,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["labels"],
          "properties": {
            "cursor": {"type": "string"},
            "labels": {
              "type": "array",
              "items": {"type": "ref", "ref": "com.atproto.label.defs#label"},
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.server.requestEmailConfirmation`
const comAtprotoServerRequestEmailConfirmation = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.requestEmailConfirmation",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Request an email with a code to confirm ownership of email.",
    },
  },
};

/// `com.atproto.server.reserveSigningKey`
const comAtprotoServerReserveSigningKey = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.reserveSigningKey",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Reserve a repo signing key, for use with account creation. Necessary so that a DID PLC update operation can be constructed during an account migraiton. Public and does not require auth; implemented by PDS. NOTE: this endpoint may change when full account migration is implemented.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "did": {
              "type": "string",
              "format": "did",
              "description": "The DID to reserve a key for.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["signingKey"],
          "properties": {
            "signingKey": {
              "type": "string",
              "description":
                  "The public key for the reserved signing key, in did:key serialization.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.server.defs`
const comAtprotoServerDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.defs",
  "defs": {
    "inviteCode": {
      "type": "object",
      "required": [
        "code",
        "available",
        "disabled",
        "forAccount",
        "createdBy",
        "createdAt",
        "uses",
      ],
      "properties": {
        "code": {"type": "string"},
        "available": {"type": "integer"},
        "disabled": {"type": "boolean"},
        "forAccount": {"type": "string"},
        "createdBy": {"type": "string"},
        "createdAt": {"type": "string", "format": "datetime"},
        "uses": {
          "type": "array",
          "items": {"type": "ref", "ref": "#inviteCodeUse"},
        },
      },
    },
    "inviteCodeUse": {
      "type": "object",
      "required": ["usedBy", "usedAt"],
      "properties": {
        "usedBy": {"type": "string", "format": "did"},
        "usedAt": {"type": "string", "format": "datetime"},
      },
    },
  },
};

/// `com.atproto.server.getServiceAuth`
const comAtprotoServerGetServiceAuth = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.getServiceAuth",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get a signed token on behalf of the requesting DID for the requested service.",
      "parameters": {
        "type": "params",
        "required": ["aud"],
        "properties": {
          "aud": {
            "type": "string",
            "format": "did",
            "description":
                "The DID of the service that the token will be used to authenticate with",
          },
          "exp": {
            "type": "integer",
            "description":
                "The time in Unix Epoch seconds that the JWT expires. Defaults to 60 seconds in the future. The service may enforce certain time bounds on tokens depending on the requested scope.",
          },
          "lxm": {
            "type": "string",
            "format": "nsid",
            "description":
                "Lexicon (XRPC) method to bind the requested token to",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["token"],
          "properties": {
            "token": {"type": "string"},
          },
        },
      },
      "errors": [
        {
          "name": "BadExpiration",
          "description":
              "Indicates that the requested expiration date is not a valid. May be in the past or may be reliant on the requested scopes.",
        },
      ],
    },
  },
};

/// `com.atproto.server.getAccountInviteCodes`
const comAtprotoServerGetAccountInviteCodes = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.getAccountInviteCodes",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get all invite codes for the current account. Requires auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "includeUsed": {"type": "boolean", "default": true},
          "createAvailable": {
            "type": "boolean",
            "description":
                "Controls whether any new 'earned' but not 'created' invites should be created.",
            "default": true,
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["codes"],
          "properties": {
            "codes": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.server.defs#inviteCode",
              },
            },
          },
        },
      },
      "errors": [
        {"name": "DuplicateCreate"},
      ],
    },
  },
};

/// `com.atproto.server.createSession`
const comAtprotoServerCreateSession = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.createSession",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an authentication session.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["identifier", "password"],
          "properties": {
            "identifier": {
              "type": "string",
              "description":
                  "Handle or other identifier supported by the server for the authenticating user.",
            },
            "password": {"type": "string"},
            "authFactorToken": {"type": "string"},
            "allowTakendown": {
              "type": "boolean",
              "description":
                  "When true, instead of throwing error for takendown accounts, a valid response with a narrow scoped token will be returned",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["accessJwt", "refreshJwt", "handle", "did"],
          "properties": {
            "accessJwt": {"type": "string"},
            "refreshJwt": {"type": "string"},
            "handle": {"type": "string", "format": "handle"},
            "did": {"type": "string", "format": "did"},
            "didDoc": {"type": "unknown"},
            "email": {"type": "string"},
            "emailConfirmed": {"type": "boolean"},
            "emailAuthFactor": {"type": "boolean"},
            "active": {"type": "boolean"},
            "status": {
              "type": "string",
              "description":
                  "If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.",
              "knownValues": ["takendown", "suspended", "deactivated"],
            },
          },
        },
      },
      "errors": [
        {"name": "AccountTakedown"},
        {"name": "AuthFactorTokenRequired"},
      ],
    },
  },
};

/// `com.atproto.server.listAppPasswords`
const comAtprotoServerListAppPasswords = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.listAppPasswords",
  "defs": {
    "main": {
      "type": "query",
      "description": "List all App Passwords.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["passwords"],
          "properties": {
            "passwords": {
              "type": "array",
              "items": {"type": "ref", "ref": "#appPassword"},
            },
          },
        },
      },
      "errors": [
        {"name": "AccountTakedown"},
      ],
    },
    "appPassword": {
      "type": "object",
      "required": ["name", "createdAt"],
      "properties": {
        "name": {"type": "string"},
        "createdAt": {"type": "string", "format": "datetime"},
        "privileged": {"type": "boolean"},
      },
    },
  },
};

/// `com.atproto.server.createInviteCodes`
const comAtprotoServerCreateInviteCodes = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.createInviteCodes",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create invite codes.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["codeCount", "useCount"],
          "properties": {
            "codeCount": {"type": "integer", "default": 1},
            "useCount": {"type": "integer"},
            "forAccounts": {
              "type": "array",
              "items": {"type": "string", "format": "did"},
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["codes"],
          "properties": {
            "codes": {
              "type": "array",
              "items": {"type": "ref", "ref": "#accountCodes"},
            },
          },
        },
      },
    },
    "accountCodes": {
      "type": "object",
      "required": ["account", "codes"],
      "properties": {
        "account": {"type": "string"},
        "codes": {
          "type": "array",
          "items": {"type": "string"},
        },
      },
    },
  },
};

/// `com.atproto.server.deleteSession`
const comAtprotoServerDeleteSession = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.deleteSession",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Delete the current session. Requires auth using the 'refreshJwt' (not the 'accessJwt').",
      "errors": [
        {"name": "InvalidToken"},
        {"name": "ExpiredToken"},
      ],
    },
  },
};

/// `com.atproto.server.revokeAppPassword`
const comAtprotoServerRevokeAppPassword = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.revokeAppPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Revoke an App Password by name.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["name"],
          "properties": {
            "name": {"type": "string"},
          },
        },
      },
    },
  },
};

/// `com.atproto.server.createAppPassword`
const comAtprotoServerCreateAppPassword = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.createAppPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an App Password.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["name"],
          "properties": {
            "name": {
              "type": "string",
              "description":
                  "A short name for the App Password, to help distinguish them.",
            },
            "privileged": {
              "type": "boolean",
              "description":
                  "If an app password has 'privileged' access to possibly sensitive account state. Meant for use with trusted clients.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {"type": "ref", "ref": "#appPassword"},
      },
      "errors": [
        {"name": "AccountTakedown"},
      ],
    },
    "appPassword": {
      "type": "object",
      "required": ["name", "password", "createdAt"],
      "properties": {
        "name": {"type": "string"},
        "password": {"type": "string"},
        "createdAt": {"type": "string", "format": "datetime"},
        "privileged": {"type": "boolean"},
      },
    },
  },
};

/// `com.atproto.server.activateAccount`
const comAtprotoServerActivateAccount = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.activateAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Activates a currently deactivated account. Used to finalize account migration after the account's repo is imported and identity is setup.",
    },
  },
};

/// `com.atproto.server.describeServer`
const comAtprotoServerDescribeServer = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.describeServer",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Describes the server's account creation requirements and capabilities. Implemented by PDS.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did", "availableUserDomains"],
          "properties": {
            "inviteCodeRequired": {
              "type": "boolean",
              "description":
                  "If true, an invite code must be supplied to create an account on this instance.",
            },
            "phoneVerificationRequired": {
              "type": "boolean",
              "description":
                  "If true, a phone verification token must be supplied to create an account on this instance.",
            },
            "availableUserDomains": {
              "type": "array",
              "description":
                  "List of domain suffixes that can be used in account handles.",
              "items": {"type": "string"},
            },
            "links": {
              "type": "ref",
              "description": "URLs of service policy documents.",
              "ref": "#links",
            },
            "contact": {
              "type": "ref",
              "description": "Contact information",
              "ref": "#contact",
            },
            "did": {"type": "string", "format": "did"},
          },
        },
      },
    },
    "links": {
      "type": "object",
      "properties": {
        "privacyPolicy": {"type": "string", "format": "uri"},
        "termsOfService": {"type": "string", "format": "uri"},
      },
    },
    "contact": {
      "type": "object",
      "properties": {
        "email": {"type": "string"},
      },
    },
  },
};

/// `com.atproto.server.confirmEmail`
const comAtprotoServerConfirmEmail = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.confirmEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Confirm an email using a token from com.atproto.server.requestEmailConfirmation.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["email", "token"],
          "properties": {
            "email": {"type": "string"},
            "token": {"type": "string"},
          },
        },
      },
      "errors": [
        {"name": "AccountNotFound"},
        {"name": "ExpiredToken"},
        {"name": "InvalidToken"},
        {"name": "InvalidEmail"},
      ],
    },
  },
};

/// `com.atproto.server.getSession`
const comAtprotoServerGetSession = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.getSession",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get information about the current auth session. Requires auth.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["handle", "did"],
          "properties": {
            "handle": {"type": "string", "format": "handle"},
            "did": {"type": "string", "format": "did"},
            "didDoc": {"type": "unknown"},
            "email": {"type": "string"},
            "emailConfirmed": {"type": "boolean"},
            "emailAuthFactor": {"type": "boolean"},
            "active": {"type": "boolean"},
            "status": {
              "type": "string",
              "description":
                  "If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.",
              "knownValues": ["takendown", "suspended", "deactivated"],
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.server.refreshSession`
const comAtprotoServerRefreshSession = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.refreshSession",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Refresh an authentication session. Requires auth using the 'refreshJwt' (not the 'accessJwt').",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["accessJwt", "refreshJwt", "handle", "did"],
          "properties": {
            "accessJwt": {"type": "string"},
            "refreshJwt": {"type": "string"},
            "handle": {"type": "string", "format": "handle"},
            "did": {"type": "string", "format": "did"},
            "didDoc": {"type": "unknown"},
            "email": {"type": "string"},
            "emailConfirmed": {"type": "boolean"},
            "emailAuthFactor": {"type": "boolean"},
            "active": {"type": "boolean"},
            "status": {
              "type": "string",
              "description":
                  "Hosting status of the account. If not specified, then assume 'active'.",
              "knownValues": ["takendown", "suspended", "deactivated"],
            },
          },
        },
      },
      "errors": [
        {"name": "AccountTakedown"},
        {"name": "InvalidToken"},
        {"name": "ExpiredToken"},
      ],
    },
  },
};

/// `com.atproto.server.deactivateAccount`
const comAtprotoServerDeactivateAccount = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.deactivateAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Deactivates a currently active account. Stops serving of repo, and future writes to repo until reactivated. Used to finalize account migration with the old host after the account has been activated on the new host.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "deleteAfter": {
              "type": "string",
              "format": "datetime",
              "description":
                  "A recommendation to server as to how long they should hold onto the deactivated account before deleting.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.server.updateEmail`
const comAtprotoServerUpdateEmail = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.updateEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Update an account's email.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["email"],
          "properties": {
            "email": {"type": "string"},
            "emailAuthFactor": {"type": "boolean"},
            "token": {
              "type": "string",
              "description":
                  "Requires a token from com.atproto.sever.requestEmailUpdate if the account's email has been confirmed.",
            },
          },
        },
      },
      "errors": [
        {"name": "ExpiredToken"},
        {"name": "InvalidToken"},
        {"name": "TokenRequired"},
      ],
    },
  },
};

/// `com.atproto.server.resetPassword`
const comAtprotoServerResetPassword = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.resetPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Reset a user account password using a token.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["token", "password"],
          "properties": {
            "token": {"type": "string"},
            "password": {"type": "string"},
          },
        },
      },
      "errors": [
        {"name": "ExpiredToken"},
        {"name": "InvalidToken"},
      ],
    },
  },
};

/// `com.atproto.server.checkAccountStatus`
const comAtprotoServerCheckAccountStatus = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.checkAccountStatus",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Returns the status of an account, especially as pertaining to import or recovery. Can be called many times over the course of an account migration. Requires auth and can only be called pertaining to oneself.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "activated",
            "validDid",
            "repoCommit",
            "repoRev",
            "repoBlocks",
            "indexedRecords",
            "privateStateValues",
            "expectedBlobs",
            "importedBlobs",
          ],
          "properties": {
            "activated": {"type": "boolean"},
            "validDid": {"type": "boolean"},
            "repoCommit": {"type": "string", "format": "cid"},
            "repoRev": {"type": "string"},
            "repoBlocks": {"type": "integer"},
            "indexedRecords": {"type": "integer"},
            "privateStateValues": {"type": "integer"},
            "expectedBlobs": {"type": "integer"},
            "importedBlobs": {"type": "integer"},
          },
        },
      },
    },
  },
};

/// `com.atproto.server.requestEmailUpdate`
const comAtprotoServerRequestEmailUpdate = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.requestEmailUpdate",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Request a token in order to update email.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["tokenRequired"],
          "properties": {
            "tokenRequired": {"type": "boolean"},
          },
        },
      },
    },
  },
};

/// `com.atproto.server.requestPasswordReset`
const comAtprotoServerRequestPasswordReset = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.requestPasswordReset",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Initiate a user account password reset via email.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["email"],
          "properties": {
            "email": {"type": "string"},
          },
        },
      },
    },
  },
};

/// `com.atproto.server.requestAccountDelete`
const comAtprotoServerRequestAccountDelete = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.requestAccountDelete",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Initiate a user account deletion via email.",
    },
  },
};

/// `com.atproto.server.createAccount`
const comAtprotoServerCreateAccount = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.createAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an account. Implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["handle"],
          "properties": {
            "email": {"type": "string"},
            "handle": {
              "type": "string",
              "format": "handle",
              "description": "Requested handle for the account.",
            },
            "did": {
              "type": "string",
              "format": "did",
              "description":
                  "Pre-existing atproto DID, being imported to a new account.",
            },
            "inviteCode": {"type": "string"},
            "verificationCode": {"type": "string"},
            "verificationPhone": {"type": "string"},
            "password": {
              "type": "string",
              "description":
                  "Initial account password. May need to meet instance-specific password strength requirements.",
            },
            "recoveryKey": {
              "type": "string",
              "description":
                  "DID PLC rotation key (aka, recovery key) to be included in PLC creation operation.",
            },
            "plcOp": {
              "type": "unknown",
              "description":
                  "A signed DID PLC operation to be submitted as part of importing an existing account to this instance. NOTE: this optional field may be updated when full account migration is implemented.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "description":
              "Account login session returned on successful account creation.",
          "required": ["accessJwt", "refreshJwt", "handle", "did"],
          "properties": {
            "accessJwt": {"type": "string"},
            "refreshJwt": {"type": "string"},
            "handle": {"type": "string", "format": "handle"},
            "did": {
              "type": "string",
              "format": "did",
              "description": "The DID of the new account.",
            },
            "didDoc": {
              "type": "unknown",
              "description": "Complete DID document.",
            },
          },
        },
      },
      "errors": [
        {"name": "InvalidHandle"},
        {"name": "InvalidPassword"},
        {"name": "InvalidInviteCode"},
        {"name": "HandleNotAvailable"},
        {"name": "UnsupportedDomain"},
        {"name": "UnresolvableDid"},
        {"name": "IncompatibleDidDoc"},
      ],
    },
  },
};

/// `com.atproto.server.deleteAccount`
const comAtprotoServerDeleteAccount = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.deleteAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Delete an actor's account with a token and password. Can only be called after requesting a deletion token. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did", "password", "token"],
          "properties": {
            "did": {"type": "string", "format": "did"},
            "password": {"type": "string"},
            "token": {"type": "string"},
          },
        },
      },
      "errors": [
        {"name": "ExpiredToken"},
        {"name": "InvalidToken"},
      ],
    },
  },
};

/// `com.atproto.server.createInviteCode`
const comAtprotoServerCreateInviteCode = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.server.createInviteCode",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an invite code.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["useCount"],
          "properties": {
            "useCount": {"type": "integer"},
            "forAccount": {"type": "string", "format": "did"},
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["code"],
          "properties": {
            "code": {"type": "string"},
          },
        },
      },
    },
  },
};

/// `com.atproto.lexicon.resolveLexicon`
const comAtprotoLexiconResolveLexicon = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.lexicon.resolveLexicon",
  "defs": {
    "main": {
      "type": "query",
      "description": "Resolves an atproto lexicon (NSID) to a schema.",
      "parameters": {
        "type": "params",
        "required": ["nsid"],
        "properties": {
          "nsid": {
            "type": "string",
            "format": "nsid",
            "description": "The lexicon NSID to resolve.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["uri", "cid", "schema"],
          "properties": {
            "cid": {
              "type": "string",
              "format": "cid",
              "description": "The CID of the lexicon schema record.",
            },
            "schema": {
              "type": "ref",
              "description": "The resolved lexicon schema record.",
              "ref": "com.atproto.lexicon.schema#main",
            },
            "uri": {
              "type": "string",
              "format": "at-uri",
              "description": "The AT-URI of the lexicon schema record.",
            },
          },
        },
      },
      "errors": [
        {
          "name": "LexiconNotFound",
          "description": "No lexicon was resolved for the NSID.",
        },
      ],
    },
  },
};

/// `com.atproto.lexicon.schema`
const comAtprotoLexiconSchema = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.lexicon.schema",
  "defs": {
    "main": {
      "type": "record",
      "description":
          "Representation of Lexicon schemas themselves, when published as atproto records. Note that the schema language is not defined in Lexicon; this meta schema currently only includes a single version field ('lexicon'). See the atproto specifications for description of the other expected top-level fields ('id', 'defs', etc).",
      "key": "nsid",
      "record": {
        "type": "object",
        "required": ["lexicon"],
        "properties": {
          "lexicon": {
            "type": "integer",
            "description":
                "Indicates the 'version' of the Lexicon language. Must be '1' for the current atproto/Lexicon schema system.",
          },
        },
      },
    },
  },
};

/// `com.atproto.sync.getHead`
const comAtprotoSyncGetHead = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getHead",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "DEPRECATED - please use com.atproto.sync.getLatestCommit instead",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["root"],
          "properties": {
            "root": {"type": "string", "format": "cid"},
          },
        },
      },
      "errors": [
        {"name": "HeadNotFound"},
      ],
    },
  },
};

/// `com.atproto.sync.getBlob`
const comAtprotoSyncGetBlob = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getBlob",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get a blob associated with a given account. Returns the full blob as originally uploaded. Does not require auth; implemented by PDS.",
      "parameters": {
        "type": "params",
        "required": ["did", "cid"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the account.",
          },
          "cid": {
            "type": "string",
            "format": "cid",
            "description": "The CID of the blob to fetch",
          },
        },
      },
      "output": {"encoding": "*/*"},
      "errors": [
        {"name": "BlobNotFound"},
        {"name": "RepoNotFound"},
        {"name": "RepoTakendown"},
        {"name": "RepoSuspended"},
        {"name": "RepoDeactivated"},
      ],
    },
  },
};

/// `com.atproto.sync.getRepo`
const comAtprotoSyncGetRepo = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getRepo",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Download a repository export as CAR file. Optionally only a 'diff' since a previous revision. Does not require auth; implemented by PDS.",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
          "since": {
            "type": "string",
            "format": "tid",
            "description":
                "The revision ('rev') of the repo to create a diff from.",
          },
        },
      },
      "output": {"encoding": "application/vnd.ipld.car"},
      "errors": [
        {"name": "RepoNotFound"},
        {"name": "RepoTakendown"},
        {"name": "RepoSuspended"},
        {"name": "RepoDeactivated"},
      ],
    },
  },
};

/// `com.atproto.sync.notifyOfUpdate`
const comAtprotoSyncNotifyOfUpdate = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.notifyOfUpdate",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Notify a crawling service of a recent update, and that crawling should resume. Intended use is after a gap between repo stream events caused the crawling service to disconnect. Does not require auth; implemented by Relay. DEPRECATED: just use com.atproto.sync.requestCrawl",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["hostname"],
          "properties": {
            "hostname": {
              "type": "string",
              "description":
                  "Hostname of the current service (usually a PDS) that is notifying of update.",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.sync.defs`
const comAtprotoSyncDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.defs",
  "defs": {
    "hostStatus": {
      "type": "string",
      "knownValues": ["active", "idle", "offline", "throttled", "banned"],
    },
  },
};

/// `com.atproto.sync.requestCrawl`
const comAtprotoSyncRequestCrawl = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.requestCrawl",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Request a service to persistently crawl hosted repos. Expected use is new PDS instances declaring their existence to Relays. Does not require auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["hostname"],
          "properties": {
            "hostname": {
              "type": "string",
              "description":
                  "Hostname of the current service (eg, PDS) that is requesting to be crawled.",
            },
          },
        },
      },
      "errors": [
        {"name": "HostBanned"},
      ],
    },
  },
};

/// `com.atproto.sync.listBlobs`
const comAtprotoSyncListBlobs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.listBlobs",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "List blob CIDs for an account, since some repo revision. Does not require auth; implemented by PDS.",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
          "since": {
            "type": "string",
            "format": "tid",
            "description": "Optional revision of the repo to list blobs since.",
          },
          "limit": {
            "type": "integer",
            "default": 500,
            "minimum": 1,
            "maximum": 1000,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["cids"],
          "properties": {
            "cursor": {"type": "string"},
            "cids": {
              "type": "array",
              "items": {"type": "string", "format": "cid"},
            },
          },
        },
      },
      "errors": [
        {"name": "RepoNotFound"},
        {"name": "RepoTakendown"},
        {"name": "RepoSuspended"},
        {"name": "RepoDeactivated"},
      ],
    },
  },
};

/// `com.atproto.sync.getLatestCommit`
const comAtprotoSyncGetLatestCommit = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getLatestCommit",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get the current commit CID & revision of the specified repo. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["cid", "rev"],
          "properties": {
            "cid": {"type": "string", "format": "cid"},
            "rev": {"type": "string", "format": "tid"},
          },
        },
      },
      "errors": [
        {"name": "RepoNotFound"},
        {"name": "RepoTakendown"},
        {"name": "RepoSuspended"},
        {"name": "RepoDeactivated"},
      ],
    },
  },
};

/// `com.atproto.sync.subscribeRepos`
const comAtprotoSyncSubscribeRepos = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.subscribeRepos",
  "defs": {
    "main": {
      "type": "subscription",
      "description":
          "Repository event stream, aka Firehose endpoint. Outputs repo commits with diff data, and identity update events, for all repositories on the current server. See the atproto specifications for details around stream sequencing, repo versioning, CAR diff format, and more. Public and does not require auth; implemented by PDS and Relay.",
      "parameters": {
        "type": "params",
        "properties": {
          "cursor": {
            "type": "integer",
            "description": "The last known event seq number to backfill from.",
          },
        },
      },
      "message": {
        "schema": {
          "type": "union",
          "refs": ["#commit", "#sync", "#identity", "#account", "#info"],
        },
      },
      "errors": [
        {"name": "FutureCursor"},
        {
          "name": "ConsumerTooSlow",
          "description":
              "If the consumer of the stream can not keep up with events, and a backlog gets too large, the server will drop the connection.",
        },
      ],
    },
    "commit": {
      "type": "object",
      "description":
          "Represents an update of repository state. Note that empty commits are allowed, which include no repo data changes, but an update to rev and signature.",
      "required": [
        "seq",
        "rebase",
        "tooBig",
        "repo",
        "commit",
        "rev",
        "since",
        "blocks",
        "ops",
        "blobs",
        "time",
      ],
      "nullable": ["since"],
      "properties": {
        "seq": {
          "type": "integer",
          "description": "The stream sequence number of this message.",
        },
        "rebase": {"type": "boolean", "description": "DEPRECATED -- unused"},
        "tooBig": {
          "type": "boolean",
          "description":
              "DEPRECATED -- replaced by #sync event and data limits. Indicates that this commit contained too many ops, or data size was too large. Consumers will need to make a separate request to get missing data.",
        },
        "repo": {
          "type": "string",
          "format": "did",
          "description":
              "The repo this event comes from. Note that all other message types name this field 'did'.",
        },
        "commit": {
          "type": "cid-link",
          "description": "Repo commit object CID.",
        },
        "rev": {
          "type": "string",
          "format": "tid",
          "description":
              "The rev of the emitted commit. Note that this information is also in the commit object included in blocks, unless this is a tooBig event.",
        },
        "since": {
          "type": "string",
          "format": "tid",
          "description":
              "The rev of the last emitted commit from this repo (if any).",
        },
        "blocks": {
          "type": "bytes",
          "description":
              "CAR file containing relevant blocks, as a diff since the previous repo state. The commit must be included as a block, and the commit block CID must be the first entry in the CAR header 'roots' list.",
          "maxLength": 2000000,
        },
        "ops": {
          "type": "array",
          "items": {
            "type": "ref",
            "description":
                "List of repo mutation operations in this commit (eg, records created, updated, or deleted).",
            "ref": "#repoOp",
          },
          "maxLength": 200,
        },
        "blobs": {
          "type": "array",
          "items": {
            "type": "cid-link",
            "description":
                "DEPRECATED -- will soon always be empty. List of new blobs (by CID) referenced by records in this commit.",
          },
        },
        "prevData": {
          "type": "cid-link",
          "description":
              "The root CID of the MST tree for the previous commit from this repo (indicated by the 'since' revision field in this message). Corresponds to the 'data' field in the repo commit object. NOTE: this field is effectively required for the 'inductive' version of firehose.",
        },
        "time": {
          "type": "string",
          "format": "datetime",
          "description":
              "Timestamp of when this message was originally broadcast.",
        },
      },
    },
    "sync": {
      "type": "object",
      "description":
          "Updates the repo to a new state, without necessarily including that state on the firehose. Used to recover from broken commit streams, data loss incidents, or in situations where upstream host does not know recent state of the repository.",
      "required": ["seq", "did", "blocks", "rev", "time"],
      "properties": {
        "seq": {
          "type": "integer",
          "description": "The stream sequence number of this message.",
        },
        "did": {
          "type": "string",
          "format": "did",
          "description":
              "The account this repo event corresponds to. Must match that in the commit object.",
        },
        "blocks": {
          "type": "bytes",
          "description":
              "CAR file containing the commit, as a block. The CAR header must include the commit block CID as the first 'root'.",
          "maxLength": 10000,
        },
        "rev": {
          "type": "string",
          "description":
              "The rev of the commit. This value must match that in the commit object.",
        },
        "time": {
          "type": "string",
          "format": "datetime",
          "description":
              "Timestamp of when this message was originally broadcast.",
        },
      },
    },
    "identity": {
      "type": "object",
      "description":
          "Represents a change to an account's identity. Could be an updated handle, signing key, or pds hosting endpoint. Serves as a prod to all downstream services to refresh their identity cache.",
      "required": ["seq", "did", "time"],
      "properties": {
        "seq": {"type": "integer"},
        "did": {"type": "string", "format": "did"},
        "time": {"type": "string", "format": "datetime"},
        "handle": {
          "type": "string",
          "format": "handle",
          "description":
              "The current handle for the account, or 'handle.invalid' if validation fails. This field is optional, might have been validated or passed-through from an upstream source. Semantics and behaviors for PDS vs Relay may evolve in the future; see atproto specs for more details.",
        },
      },
    },
    "account": {
      "type": "object",
      "description":
          "Represents a change to an account's status on a host (eg, PDS or Relay). The semantics of this event are that the status is at the host which emitted the event, not necessarily that at the currently active PDS. Eg, a Relay takedown would emit a takedown with active=false, even if the PDS is still active.",
      "required": ["seq", "did", "time", "active"],
      "properties": {
        "seq": {"type": "integer"},
        "did": {"type": "string", "format": "did"},
        "time": {"type": "string", "format": "datetime"},
        "active": {
          "type": "boolean",
          "description":
              "Indicates that the account has a repository which can be fetched from the host that emitted this event.",
        },
        "status": {
          "type": "string",
          "description":
              "If active=false, this optional field indicates a reason for why the account is not active.",
          "knownValues": [
            "takendown",
            "suspended",
            "deleted",
            "deactivated",
            "desynchronized",
            "throttled",
          ],
        },
      },
    },
    "info": {
      "type": "object",
      "required": ["name"],
      "properties": {
        "name": {
          "type": "string",
          "knownValues": ["OutdatedCursor"],
        },
        "message": {"type": "string"},
      },
    },
    "repoOp": {
      "type": "object",
      "description": "A repo operation, ie a mutation of a single record.",
      "required": ["action", "path", "cid"],
      "nullable": ["cid"],
      "properties": {
        "action": {
          "type": "string",
          "knownValues": ["create", "update", "delete"],
        },
        "path": {"type": "string"},
        "cid": {
          "type": "cid-link",
          "description":
              "For creates and updates, the new record CID. For deletions, null.",
        },
        "prev": {
          "type": "cid-link",
          "description":
              "For updates and deletes, the previous record CID (required for inductive firehose). For creations, field should not be defined.",
        },
      },
    },
  },
};

/// `com.atproto.sync.getRepoStatus`
const comAtprotoSyncGetRepoStatus = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getRepoStatus",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get the hosting status for a repository, on this server. Expected to be implemented by PDS and Relay.",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["did", "active"],
          "properties": {
            "did": {"type": "string", "format": "did"},
            "active": {"type": "boolean"},
            "status": {
              "type": "string",
              "description":
                  "If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.",
              "knownValues": [
                "takendown",
                "suspended",
                "deleted",
                "deactivated",
                "desynchronized",
                "throttled",
              ],
            },
            "rev": {
              "type": "string",
              "format": "tid",
              "description":
                  "Optional field, the current rev of the repo, if active=true",
            },
          },
        },
      },
      "errors": [
        {"name": "RepoNotFound"},
      ],
    },
  },
};

/// `com.atproto.sync.getRecord`
const comAtprotoSyncGetRecord = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getRecord",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get data blocks needed to prove the existence or non-existence of record in the current version of repo. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": ["did", "collection", "rkey"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
          "collection": {"type": "string", "format": "nsid"},
          "rkey": {
            "type": "string",
            "format": "record-key",
            "description": "Record Key",
          },
        },
      },
      "output": {"encoding": "application/vnd.ipld.car"},
      "errors": [
        {"name": "RecordNotFound"},
        {"name": "RepoNotFound"},
        {"name": "RepoTakendown"},
        {"name": "RepoSuspended"},
        {"name": "RepoDeactivated"},
      ],
    },
  },
};

/// `com.atproto.sync.listHosts`
const comAtprotoSyncListHosts = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.listHosts",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Enumerates upstream hosts (eg, PDS or relay instances) that this service consumes from. Implemented by relays.",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "default": 200,
            "minimum": 1,
            "maximum": 1000,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["hosts"],
          "properties": {
            "cursor": {"type": "string"},
            "hosts": {
              "type": "array",
              "description":
                  "Sort order is not formally specified. Recommended order is by time host was first seen by the server, with oldest first.",
              "items": {"type": "ref", "ref": "#host"},
            },
          },
        },
      },
    },
    "host": {
      "type": "object",
      "required": ["hostname"],
      "properties": {
        "hostname": {
          "type": "string",
          "description": "hostname of server; not a URL (no scheme)",
        },
        "seq": {
          "type": "integer",
          "description":
              "Recent repo stream event sequence number. May be delayed from actual stream processing (eg, persisted cursor not in-memory cursor).",
        },
        "accountCount": {"type": "integer"},
        "status": {"type": "ref", "ref": "com.atproto.sync.defs#hostStatus"},
      },
    },
  },
};

/// `com.atproto.sync.listRepos`
const comAtprotoSyncListRepos = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.listRepos",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Enumerates all the DID, rev, and commit CID for all repos hosted by this service. Does not require auth; implemented by PDS and Relay.",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "default": 500,
            "minimum": 1,
            "maximum": 1000,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["repos"],
          "properties": {
            "cursor": {"type": "string"},
            "repos": {
              "type": "array",
              "items": {"type": "ref", "ref": "#repo"},
            },
          },
        },
      },
    },
    "repo": {
      "type": "object",
      "required": ["did", "head", "rev"],
      "properties": {
        "did": {"type": "string", "format": "did"},
        "head": {
          "type": "string",
          "format": "cid",
          "description": "Current repo commit CID",
        },
        "rev": {"type": "string", "format": "tid"},
        "active": {"type": "boolean"},
        "status": {
          "type": "string",
          "description":
              "If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.",
          "knownValues": [
            "takendown",
            "suspended",
            "deleted",
            "deactivated",
            "desynchronized",
            "throttled",
          ],
        },
      },
    },
  },
};

/// `com.atproto.sync.getHostStatus`
const comAtprotoSyncGetHostStatus = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getHostStatus",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Returns information about a specified upstream host, as consumed by the server. Implemented by relays.",
      "parameters": {
        "type": "params",
        "required": ["hostname"],
        "properties": {
          "hostname": {
            "type": "string",
            "description":
                "Hostname of the host (eg, PDS or relay) being queried.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["hostname"],
          "properties": {
            "hostname": {"type": "string"},
            "seq": {
              "type": "integer",
              "description":
                  "Recent repo stream event sequence number. May be delayed from actual stream processing (eg, persisted cursor not in-memory cursor).",
            },
            "accountCount": {
              "type": "integer",
              "description":
                  "Number of accounts on the server which are associated with the upstream host. Note that the upstream may actually have more accounts.",
            },
            "status": {
              "type": "ref",
              "ref": "com.atproto.sync.defs#hostStatus",
            },
          },
        },
      },
      "errors": [
        {"name": "HostNotFound"},
      ],
    },
  },
};

/// `com.atproto.sync.getBlocks`
const comAtprotoSyncGetBlocks = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getBlocks",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get data blocks from a given repo, by CID. For example, intermediate MST nodes, or records. Does not require auth; implemented by PDS.",
      "parameters": {
        "type": "params",
        "required": ["did", "cids"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
          "cids": {
            "type": "array",
            "items": {"type": "string", "format": "cid"},
          },
        },
      },
      "output": {"encoding": "application/vnd.ipld.car"},
      "errors": [
        {"name": "BlockNotFound"},
        {"name": "RepoNotFound"},
        {"name": "RepoTakendown"},
        {"name": "RepoSuspended"},
        {"name": "RepoDeactivated"},
      ],
    },
  },
};

/// `com.atproto.sync.listReposByCollection`
const comAtprotoSyncListReposByCollection = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.listReposByCollection",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Enumerates all the DIDs which have records with the given collection NSID.",
      "parameters": {
        "type": "params",
        "required": ["collection"],
        "properties": {
          "collection": {"type": "string", "format": "nsid"},
          "limit": {
            "type": "integer",
            "description":
                "Maximum size of response set. Recommend setting a large maximum (1000+) when enumerating large DID lists.",
            "default": 500,
            "minimum": 1,
            "maximum": 2000,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["repos"],
          "properties": {
            "cursor": {"type": "string"},
            "repos": {
              "type": "array",
              "items": {"type": "ref", "ref": "#repo"},
            },
          },
        },
      },
    },
    "repo": {
      "type": "object",
      "required": ["did"],
      "properties": {
        "did": {"type": "string", "format": "did"},
      },
    },
  },
};

/// `com.atproto.sync.getCheckout`
const comAtprotoSyncGetCheckout = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.sync.getCheckout",
  "defs": {
    "main": {
      "type": "query",
      "description": "DEPRECATED - please use com.atproto.sync.getRepo instead",
      "parameters": {
        "type": "params",
        "required": ["did"],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo.",
          },
        },
      },
      "output": {"encoding": "application/vnd.ipld.car"},
    },
  },
};

/// `com.atproto.repo.strongRef`
const comAtprotoRepoStrongRef = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.strongRef",
  "description": "A URI with a content-hash fingerprint.",
  "defs": {
    "main": {
      "type": "object",
      "required": ["uri", "cid"],
      "properties": {
        "uri": {"type": "string", "format": "at-uri"},
        "cid": {"type": "string", "format": "cid"},
      },
    },
  },
};

/// `com.atproto.repo.defs`
const comAtprotoRepoDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.defs",
  "defs": {
    "commitMeta": {
      "type": "object",
      "required": ["cid", "rev"],
      "properties": {
        "cid": {"type": "string", "format": "cid"},
        "rev": {"type": "string", "format": "tid"},
      },
    },
  },
};

/// `com.atproto.repo.listMissingBlobs`
const comAtprotoRepoListMissingBlobs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.listMissingBlobs",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Returns a list of missing blobs for the requesting account. Intended to be used in the account migration flow.",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "default": 500,
            "minimum": 1,
            "maximum": 1000,
          },
          "cursor": {"type": "string"},
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["blobs"],
          "properties": {
            "cursor": {"type": "string"},
            "blobs": {
              "type": "array",
              "items": {"type": "ref", "ref": "#recordBlob"},
            },
          },
        },
      },
    },
    "recordBlob": {
      "type": "object",
      "required": ["cid", "recordUri"],
      "properties": {
        "cid": {"type": "string", "format": "cid"},
        "recordUri": {"type": "string", "format": "at-uri"},
      },
    },
  },
};

/// `com.atproto.repo.createRecord`
const comAtprotoRepoCreateRecord = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.createRecord",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Create a single new repository record. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["repo", "collection", "record"],
          "properties": {
            "repo": {
              "type": "string",
              "format": "at-identifier",
              "description":
                  "The handle or DID of the repo (aka, current account).",
            },
            "collection": {
              "type": "string",
              "format": "nsid",
              "description": "The NSID of the record collection.",
            },
            "rkey": {
              "type": "string",
              "format": "record-key",
              "description": "The Record Key.",
              "maxLength": 512,
            },
            "validate": {
              "type": "boolean",
              "description":
                  "Can be set to 'false' to skip Lexicon schema validation of record data, 'true' to require it, or leave unset to validate only for known Lexicons.",
            },
            "record": {
              "type": "unknown",
              "description": "The record itself. Must contain a \$type field.",
            },
            "swapCommit": {
              "type": "string",
              "format": "cid",
              "description":
                  "Compare and swap with the previous commit by CID.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["uri", "cid"],
          "properties": {
            "uri": {"type": "string", "format": "at-uri"},
            "cid": {"type": "string", "format": "cid"},
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta",
            },
            "validationStatus": {
              "type": "string",
              "knownValues": ["valid", "unknown"],
            },
          },
        },
      },
      "errors": [
        {
          "name": "InvalidSwap",
          "description":
              "Indicates that 'swapCommit' didn't match current repo commit.",
        },
      ],
    },
  },
};

/// `com.atproto.repo.deleteRecord`
const comAtprotoRepoDeleteRecord = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.deleteRecord",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Delete a repository record, or ensure it doesn't exist. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["repo", "collection", "rkey"],
          "properties": {
            "repo": {
              "type": "string",
              "format": "at-identifier",
              "description":
                  "The handle or DID of the repo (aka, current account).",
            },
            "collection": {
              "type": "string",
              "format": "nsid",
              "description": "The NSID of the record collection.",
            },
            "rkey": {
              "type": "string",
              "format": "record-key",
              "description": "The Record Key.",
            },
            "swapRecord": {
              "type": "string",
              "format": "cid",
              "description":
                  "Compare and swap with the previous record by CID.",
            },
            "swapCommit": {
              "type": "string",
              "format": "cid",
              "description":
                  "Compare and swap with the previous commit by CID.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta",
            },
          },
        },
      },
      "errors": [
        {"name": "InvalidSwap"},
      ],
    },
  },
};

/// `com.atproto.repo.putRecord`
const comAtprotoRepoPutRecord = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.putRecord",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Write a repository record, creating or updating it as needed. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["repo", "collection", "rkey", "record"],
          "nullable": ["swapRecord"],
          "properties": {
            "repo": {
              "type": "string",
              "format": "at-identifier",
              "description":
                  "The handle or DID of the repo (aka, current account).",
            },
            "collection": {
              "type": "string",
              "format": "nsid",
              "description": "The NSID of the record collection.",
            },
            "rkey": {
              "type": "string",
              "format": "record-key",
              "description": "The Record Key.",
              "maxLength": 512,
            },
            "validate": {
              "type": "boolean",
              "description":
                  "Can be set to 'false' to skip Lexicon schema validation of record data, 'true' to require it, or leave unset to validate only for known Lexicons.",
            },
            "record": {
              "type": "unknown",
              "description": "The record to write.",
            },
            "swapRecord": {
              "type": "string",
              "format": "cid",
              "description":
                  "Compare and swap with the previous record by CID. WARNING: nullable and optional field; may cause problems with golang implementation",
            },
            "swapCommit": {
              "type": "string",
              "format": "cid",
              "description":
                  "Compare and swap with the previous commit by CID.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["uri", "cid"],
          "properties": {
            "uri": {"type": "string", "format": "at-uri"},
            "cid": {"type": "string", "format": "cid"},
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta",
            },
            "validationStatus": {
              "type": "string",
              "knownValues": ["valid", "unknown"],
            },
          },
        },
      },
      "errors": [
        {"name": "InvalidSwap"},
      ],
    },
  },
};

/// `com.atproto.repo.uploadBlob`
const comAtprotoRepoUploadBlob = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.uploadBlob",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Upload a new blob, to be referenced from a repository record. The blob will be deleted if it is not referenced within a time window (eg, minutes). Blob restrictions (mimetype, size, etc) are enforced when the reference is created. Requires auth, implemented by PDS.",
      "input": {"encoding": "*/*"},
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["blob"],
          "properties": {
            "blob": {"type": "blob"},
          },
        },
      },
    },
  },
};

/// `com.atproto.repo.importRepo`
const comAtprotoRepoImportRepo = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.importRepo",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Import a repo in the form of a CAR file. Requires Content-Length HTTP header to be set.",
      "input": {"encoding": "application/vnd.ipld.car"},
    },
  },
};

/// `com.atproto.repo.describeRepo`
const comAtprotoRepoDescribeRepo = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.describeRepo",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get information about an account and repository, including the list of collections. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": ["repo"],
        "properties": {
          "repo": {
            "type": "string",
            "format": "at-identifier",
            "description": "The handle or DID of the repo.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle",
            "did",
            "didDoc",
            "collections",
            "handleIsCorrect",
          ],
          "properties": {
            "handle": {"type": "string", "format": "handle"},
            "did": {"type": "string", "format": "did"},
            "didDoc": {
              "type": "unknown",
              "description": "The complete DID document for this account.",
            },
            "collections": {
              "type": "array",
              "description":
                  "List of all the collections (NSIDs) for which this repo contains at least one record.",
              "items": {"type": "string", "format": "nsid"},
            },
            "handleIsCorrect": {
              "type": "boolean",
              "description":
                  "Indicates if handle is currently valid (resolves bi-directionally)",
            },
          },
        },
      },
    },
  },
};

/// `com.atproto.repo.getRecord`
const comAtprotoRepoGetRecord = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.getRecord",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "Get a single record from a repository. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": ["repo", "collection", "rkey"],
        "properties": {
          "repo": {
            "type": "string",
            "format": "at-identifier",
            "description": "The handle or DID of the repo.",
          },
          "collection": {
            "type": "string",
            "format": "nsid",
            "description": "The NSID of the record collection.",
          },
          "rkey": {
            "type": "string",
            "format": "record-key",
            "description": "The Record Key.",
          },
          "cid": {
            "type": "string",
            "format": "cid",
            "description":
                "The CID of the version of the record. If not specified, then return the most recent version.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["uri", "value"],
          "properties": {
            "uri": {"type": "string", "format": "at-uri"},
            "cid": {"type": "string", "format": "cid"},
            "value": {"type": "unknown"},
          },
        },
      },
      "errors": [
        {"name": "RecordNotFound"},
      ],
    },
  },
};

/// `com.atproto.repo.applyWrites`
const comAtprotoRepoApplyWrites = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.applyWrites",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Apply a batch transaction of repository creates, updates, and deletes. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["repo", "writes"],
          "properties": {
            "repo": {
              "type": "string",
              "format": "at-identifier",
              "description":
                  "The handle or DID of the repo (aka, current account).",
            },
            "validate": {
              "type": "boolean",
              "description":
                  "Can be set to 'false' to skip Lexicon schema validation of record data across all operations, 'true' to require it, or leave unset to validate only for known Lexicons.",
            },
            "writes": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": ["#create", "#update", "#delete"],
                "closed": true,
              },
            },
            "swapCommit": {
              "type": "string",
              "format": "cid",
              "description":
                  "If provided, the entire operation will fail if the current repo commit CID does not match this value. Used to prevent conflicting repo mutations.",
            },
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [],
          "properties": {
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta",
            },
            "results": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": ["#createResult", "#updateResult", "#deleteResult"],
                "closed": true,
              },
            },
          },
        },
      },
      "errors": [
        {
          "name": "InvalidSwap",
          "description":
              "Indicates that the 'swapCommit' parameter did not match current commit.",
        },
      ],
    },
    "create": {
      "type": "object",
      "description": "Operation which creates a new record.",
      "required": ["collection", "value"],
      "properties": {
        "collection": {"type": "string", "format": "nsid"},
        "rkey": {
          "type": "string",
          "format": "record-key",
          "description":
              "NOTE: maxLength is redundant with record-key format. Keeping it temporarily to ensure backwards compatibility.",
          "maxLength": 512,
        },
        "value": {"type": "unknown"},
      },
    },
    "update": {
      "type": "object",
      "description": "Operation which updates an existing record.",
      "required": ["collection", "rkey", "value"],
      "properties": {
        "collection": {"type": "string", "format": "nsid"},
        "rkey": {"type": "string", "format": "record-key"},
        "value": {"type": "unknown"},
      },
    },
    "delete": {
      "type": "object",
      "description": "Operation which deletes an existing record.",
      "required": ["collection", "rkey"],
      "properties": {
        "collection": {"type": "string", "format": "nsid"},
        "rkey": {"type": "string", "format": "record-key"},
      },
    },
    "createResult": {
      "type": "object",
      "required": ["uri", "cid"],
      "properties": {
        "uri": {"type": "string", "format": "at-uri"},
        "cid": {"type": "string", "format": "cid"},
        "validationStatus": {
          "type": "string",
          "knownValues": ["valid", "unknown"],
        },
      },
    },
    "updateResult": {
      "type": "object",
      "required": ["uri", "cid"],
      "properties": {
        "uri": {"type": "string", "format": "at-uri"},
        "cid": {"type": "string", "format": "cid"},
        "validationStatus": {
          "type": "string",
          "knownValues": ["valid", "unknown"],
        },
      },
    },
    "deleteResult": {"type": "object", "required": [], "properties": {}},
  },
};

/// `com.atproto.repo.listRecords`
const comAtprotoRepoListRecords = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.repo.listRecords",
  "defs": {
    "main": {
      "type": "query",
      "description":
          "List a range of records in a repository, matching a specific collection. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": ["repo", "collection"],
        "properties": {
          "repo": {
            "type": "string",
            "format": "at-identifier",
            "description": "The handle or DID of the repo.",
          },
          "collection": {
            "type": "string",
            "format": "nsid",
            "description": "The NSID of the record type.",
          },
          "limit": {
            "type": "integer",
            "description": "The number of records to return.",
            "default": 50,
            "minimum": 1,
            "maximum": 100,
          },
          "cursor": {"type": "string"},
          "reverse": {
            "type": "boolean",
            "description": "Flag to reverse the order of the returned records.",
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["records"],
          "properties": {
            "cursor": {"type": "string"},
            "records": {
              "type": "array",
              "items": {"type": "ref", "ref": "#record"},
            },
          },
        },
      },
    },
    "record": {
      "type": "object",
      "required": ["uri", "cid", "value"],
      "properties": {
        "uri": {"type": "string", "format": "at-uri"},
        "cid": {"type": "string", "format": "cid"},
        "value": {"type": "unknown"},
      },
    },
  },
};

/// `com.atproto.moderation.defs`
const comAtprotoModerationDefs = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.moderation.defs",
  "defs": {
    "reasonType": {
      "type": "string",
      "knownValues": [
        "com.atproto.moderation.defs#reasonSpam",
        "com.atproto.moderation.defs#reasonViolation",
        "com.atproto.moderation.defs#reasonMisleading",
        "com.atproto.moderation.defs#reasonSexual",
        "com.atproto.moderation.defs#reasonRude",
        "com.atproto.moderation.defs#reasonOther",
        "com.atproto.moderation.defs#reasonAppeal",
        "tools.ozone.report.defs#reasonAppeal",
        "tools.ozone.report.defs#reasonOther",
        "tools.ozone.report.defs#reasonViolenceAnimal",
        "tools.ozone.report.defs#reasonViolenceThreats",
        "tools.ozone.report.defs#reasonViolenceGraphicContent",
        "tools.ozone.report.defs#reasonViolenceGlorification",
        "tools.ozone.report.defs#reasonViolenceExtremistContent",
        "tools.ozone.report.defs#reasonViolenceTrafficking",
        "tools.ozone.report.defs#reasonViolenceOther",
        "tools.ozone.report.defs#reasonSexualAbuseContent",
        "tools.ozone.report.defs#reasonSexualNCII",
        "tools.ozone.report.defs#reasonSexualDeepfake",
        "tools.ozone.report.defs#reasonSexualAnimal",
        "tools.ozone.report.defs#reasonSexualUnlabeled",
        "tools.ozone.report.defs#reasonSexualOther",
        "tools.ozone.report.defs#reasonChildSafetyCSAM",
        "tools.ozone.report.defs#reasonChildSafetyGroom",
        "tools.ozone.report.defs#reasonChildSafetyPrivacy",
        "tools.ozone.report.defs#reasonChildSafetyHarassment",
        "tools.ozone.report.defs#reasonChildSafetyOther",
        "tools.ozone.report.defs#reasonHarassmentTroll",
        "tools.ozone.report.defs#reasonHarassmentTargeted",
        "tools.ozone.report.defs#reasonHarassmentHateSpeech",
        "tools.ozone.report.defs#reasonHarassmentDoxxing",
        "tools.ozone.report.defs#reasonHarassmentOther",
        "tools.ozone.report.defs#reasonMisleadingBot",
        "tools.ozone.report.defs#reasonMisleadingImpersonation",
        "tools.ozone.report.defs#reasonMisleadingSpam",
        "tools.ozone.report.defs#reasonMisleadingScam",
        "tools.ozone.report.defs#reasonMisleadingElections",
        "tools.ozone.report.defs#reasonMisleadingOther",
        "tools.ozone.report.defs#reasonRuleSiteSecurity",
        "tools.ozone.report.defs#reasonRuleProhibitedSales",
        "tools.ozone.report.defs#reasonRuleBanEvasion",
        "tools.ozone.report.defs#reasonRuleOther",
        "tools.ozone.report.defs#reasonSelfHarmContent",
        "tools.ozone.report.defs#reasonSelfHarmED",
        "tools.ozone.report.defs#reasonSelfHarmStunts",
        "tools.ozone.report.defs#reasonSelfHarmSubstances",
        "tools.ozone.report.defs#reasonSelfHarmOther",
      ],
    },
    "reasonSpam": {
      "type": "token",
      "description":
          "Spam: frequent unwanted promotion, replies, mentions. Prefer new lexicon definition `tools.ozone.report.defs#reasonMisleadingSpam`.",
    },
    "reasonViolation": {
      "type": "token",
      "description":
          "Direct violation of server rules, laws, terms of service. Prefer new lexicon definition `tools.ozone.report.defs#reasonRuleOther`.",
    },
    "reasonMisleading": {
      "type": "token",
      "description":
          "Misleading identity, affiliation, or content. Prefer new lexicon definition `tools.ozone.report.defs#reasonMisleadingOther`.",
    },
    "reasonSexual": {
      "type": "token",
      "description":
          "Unwanted or mislabeled sexual content. Prefer new lexicon definition `tools.ozone.report.defs#reasonSexualUnlabeled`.",
    },
    "reasonRude": {
      "type": "token",
      "description":
          "Rude, harassing, explicit, or otherwise unwelcoming behavior. Prefer new lexicon definition `tools.ozone.report.defs#reasonHarassmentOther`.",
    },
    "reasonOther": {
      "type": "token",
      "description":
          "Reports not falling under another report category. Prefer new lexicon definition `tools.ozone.report.defs#reasonOther`.",
    },
    "reasonAppeal": {
      "type": "token",
      "description": "Appeal a previously taken moderation action",
    },
    "subjectType": {
      "type": "string",
      "description": "Tag describing a type of subject that might be reported.",
      "knownValues": ["account", "record", "chat"],
    },
  },
};

/// `com.atproto.moderation.createReport`
const comAtprotoModerationCreateReport = <String, dynamic>{
  "lexicon": 1,
  "id": "com.atproto.moderation.createReport",
  "defs": {
    "main": {
      "type": "procedure",
      "description":
          "Submit a moderation report regarding an atproto account or record. Implemented by moderation services (with PDS proxying), and requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": ["reasonType", "subject"],
          "properties": {
            "reasonType": {
              "type": "ref",
              "description":
                  "Indicates the broad category of violation the report is for.",
              "ref": "com.atproto.moderation.defs#reasonType",
            },
            "reason": {
              "type": "string",
              "description":
                  "Additional context about the content and violation.",
              "maxLength": 20000,
              "maxGraphemes": 2000,
            },
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
              ],
            },
            "modTool": {"type": "ref", "ref": "#modTool"},
          },
        },
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "id",
            "reasonType",
            "subject",
            "reportedBy",
            "createdAt",
          ],
          "properties": {
            "id": {"type": "integer"},
            "reasonType": {
              "type": "ref",
              "ref": "com.atproto.moderation.defs#reasonType",
            },
            "reason": {
              "type": "string",
              "maxLength": 20000,
              "maxGraphemes": 2000,
            },
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
              ],
            },
            "reportedBy": {"type": "string", "format": "did"},
            "createdAt": {"type": "string", "format": "datetime"},
          },
        },
      },
    },
    "modTool": {
      "type": "object",
      "description":
          "Moderation tool information for tracing the source of the action",
      "required": ["name"],
      "properties": {
        "name": {
          "type": "string",
          "description":
              "Name/identifier of the source (e.g., 'bsky-app/android', 'bsky-web/chrome')",
        },
        "meta": {
          "type": "unknown",
          "description": "Additional arbitrary metadata about the source",
        },
      },
    },
  },
};

/// The collection of official lexicons.
const lexicons = <Map<String, dynamic>>[
  comAtprotoTempDereferenceScope,
  comAtprotoTempAddReservedHandle,
  comAtprotoTempCheckSignupQueue,
  comAtprotoTempCheckHandleAvailability,
  comAtprotoTempRequestPhoneVerification,
  comAtprotoTempRevokeAccountCredentials,
  comAtprotoTempFetchLabels,
  comAtprotoIdentityUpdateHandle,
  comAtprotoIdentityDefs,
  comAtprotoIdentitySignPlcOperation,
  comAtprotoIdentitySubmitPlcOperation,
  comAtprotoIdentityResolveIdentity,
  comAtprotoIdentityRefreshIdentity,
  comAtprotoIdentityResolveHandle,
  comAtprotoIdentityRequestPlcOperationSignature,
  comAtprotoIdentityGetRecommendedDidCredentials,
  comAtprotoIdentityResolveDid,
  comAtprotoAdminUpdateAccountEmail,
  comAtprotoAdminGetAccountInfo,
  comAtprotoAdminGetSubjectStatus,
  comAtprotoAdminDefs,
  comAtprotoAdminSearchAccounts,
  comAtprotoAdminUpdateAccountPassword,
  comAtprotoAdminUpdateAccountHandle,
  comAtprotoAdminGetInviteCodes,
  comAtprotoAdminUpdateAccountSigningKey,
  comAtprotoAdminEnableAccountInvites,
  comAtprotoAdminDisableAccountInvites,
  comAtprotoAdminDisableInviteCodes,
  comAtprotoAdminUpdateSubjectStatus,
  comAtprotoAdminSendEmail,
  comAtprotoAdminGetAccountInfos,
  comAtprotoAdminDeleteAccount,
  comAtprotoLabelSubscribeLabels,
  comAtprotoLabelDefs,
  comAtprotoLabelQueryLabels,
  comAtprotoServerRequestEmailConfirmation,
  comAtprotoServerReserveSigningKey,
  comAtprotoServerDefs,
  comAtprotoServerGetServiceAuth,
  comAtprotoServerGetAccountInviteCodes,
  comAtprotoServerCreateSession,
  comAtprotoServerListAppPasswords,
  comAtprotoServerCreateInviteCodes,
  comAtprotoServerDeleteSession,
  comAtprotoServerRevokeAppPassword,
  comAtprotoServerCreateAppPassword,
  comAtprotoServerActivateAccount,
  comAtprotoServerDescribeServer,
  comAtprotoServerConfirmEmail,
  comAtprotoServerGetSession,
  comAtprotoServerRefreshSession,
  comAtprotoServerDeactivateAccount,
  comAtprotoServerUpdateEmail,
  comAtprotoServerResetPassword,
  comAtprotoServerCheckAccountStatus,
  comAtprotoServerRequestEmailUpdate,
  comAtprotoServerRequestPasswordReset,
  comAtprotoServerRequestAccountDelete,
  comAtprotoServerCreateAccount,
  comAtprotoServerDeleteAccount,
  comAtprotoServerCreateInviteCode,
  comAtprotoLexiconResolveLexicon,
  comAtprotoLexiconSchema,
  comAtprotoSyncGetHead,
  comAtprotoSyncGetBlob,
  comAtprotoSyncGetRepo,
  comAtprotoSyncNotifyOfUpdate,
  comAtprotoSyncDefs,
  comAtprotoSyncRequestCrawl,
  comAtprotoSyncListBlobs,
  comAtprotoSyncGetLatestCommit,
  comAtprotoSyncSubscribeRepos,
  comAtprotoSyncGetRepoStatus,
  comAtprotoSyncGetRecord,
  comAtprotoSyncListHosts,
  comAtprotoSyncListRepos,
  comAtprotoSyncGetHostStatus,
  comAtprotoSyncGetBlocks,
  comAtprotoSyncListReposByCollection,
  comAtprotoSyncGetCheckout,
  comAtprotoRepoStrongRef,
  comAtprotoRepoDefs,
  comAtprotoRepoListMissingBlobs,
  comAtprotoRepoCreateRecord,
  comAtprotoRepoDeleteRecord,
  comAtprotoRepoPutRecord,
  comAtprotoRepoUploadBlob,
  comAtprotoRepoImportRepo,
  comAtprotoRepoDescribeRepo,
  comAtprotoRepoGetRecord,
  comAtprotoRepoApplyWrites,
  comAtprotoRepoListRecords,
  comAtprotoModerationDefs,
  comAtprotoModerationCreateReport,
];
