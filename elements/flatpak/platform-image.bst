kind: compose
depends:
- filename: sdk-platform.bst
  type: build
- filename: base/man-db-generate.bst
  junction: freedesktop-sdk.bst
  type: build
config:
  include:
  - runtime
public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'
