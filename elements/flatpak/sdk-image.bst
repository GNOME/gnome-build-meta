kind: compose
depends:
- filename: sdk.bst
  type: build
- filename: base/man-db-generate.bst
  junction: freedesktop-sdk.bst
  type: build
config:
  include:
  - runtime
  - devel
public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'
