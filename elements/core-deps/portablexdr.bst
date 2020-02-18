kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:portablexdr-4.9.1.tar.gz
  ref: 5cf4bdd153cf4d44eaf10b725f451d0cfadc070b4b9a9ccfb64094b8f78de72c
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
