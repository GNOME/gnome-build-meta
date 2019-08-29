kind: compose
depends:
- filename: sdk-platform.bst
  type: build
- filename: multiarch/multiarch-platform.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: integration/split-locales.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: integration/split-docs.bst
  junction: freedesktop-sdk.bst
  type: build
config:
  exclude:
  - devel
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
