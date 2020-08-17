kind: compose
build-depends:
- sdk.bst
- sdk-manifest.bst
- freedesktop-sdk.bst:components/python3-usercustomize.bst
- freedesktop-sdk.bst:components/python3-sitecustomize.bst
- freedesktop-sdk.bst:multiarch/multiarch-sdk.bst
- freedesktop-sdk.bst:integration/split-locales.bst
- freedesktop-sdk.bst:integration/split-docs.bst
- freedesktop-sdk.bst:integration/flatpak-builder-configuration.bst
- freedesktop-sdk.bst:integration/debug-app-link.bst
config:
  exclude:
  - extra
  - static-blocklist
  - vm-only
public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'
