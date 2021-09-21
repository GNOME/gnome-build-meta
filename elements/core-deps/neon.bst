kind: autotools
sources:
- kind: tar
  url: https://notroj.github.io/neon/neon-0.31.2.tar.gz
  ref: cf1ee3ac27a215814a9c80803fcee4f0ede8466ebead40267a9bd115e16a8678
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-shared
