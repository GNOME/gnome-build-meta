kind: compose
depends:
- filename: sdk.bst
  type: build
- filename: multiarch-sdk.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: split-locales.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: split-docs.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: flatpak-builder-configuration.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: debug-app-link.bst
  junction: freedesktop-sdk.bst
  type: build
config:
  exclude:
  - extra
public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'
