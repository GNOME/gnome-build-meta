kind: compose
depends:
- filename: sdk.bst
  type: build
- filename: multiarch/multiarch-sdk.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: integration/split-locales.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: integration/split-docs.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: integration/flatpak-builder-configuration.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: integration/debug-app-link.bst
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
