kind: compose
depends:
- filename: sdk.bst
  type: build
- filename: base/man-db-generate.bst
  junction: base/freedesktop-sdk-junction.bst
  type: build
public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'
