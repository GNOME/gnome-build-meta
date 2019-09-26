kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.12.15.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
