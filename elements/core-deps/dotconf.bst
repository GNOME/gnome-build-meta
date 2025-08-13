kind: autotools
sources:
- kind: tar
  url: github_files:williamh/dotconf/archive/v1.4.1.tar.gz
  ref: 5922c46cacf99b2ecc4853d28a2bda4a489292e73276e604bd9cba29dfca892d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
