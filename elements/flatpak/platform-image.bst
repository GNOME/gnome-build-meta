kind: compose
build-depends:
- platform-manifest.bst
- sdk-platform.bst
- freedesktop-sdk.bst:components/python3-usercustomize.bst
- freedesktop-sdk.bst:components/python3-sitecustomize.bst
- freedesktop-sdk.bst:multiarch/multiarch-platform.bst
- freedesktop-sdk.bst:integration/split-locales.bst
- freedesktop-sdk.bst:integration/split-docs.bst
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
