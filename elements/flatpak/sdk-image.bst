kind: compose
build-depends:
- flatpak/sdk-manifest.bst
- sdk.bst
- sdk/os-release.bst
- freedesktop-sdk.bst:components/fontconfig-flatpak-config.bst
- freedesktop-sdk.bst:components/nsswitch-config.bst
- freedesktop-sdk.bst:components/python3-sitecustomize.bst
- freedesktop-sdk.bst:integration/debug-app-link.bst
- freedesktop-sdk.bst:integration/flatpak-builder-configuration.bst
- freedesktop-sdk.bst:integration/split-docs.bst
- freedesktop-sdk.bst:integration/split-locales.bst
- freedesktop-sdk.bst:multiarch/multiarch-sdk.bst
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
