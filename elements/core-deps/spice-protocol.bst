kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.14.1.tar.bz2
  ref: 79e6da61834b080a143234c1cd4c099a8ead1a64b5039489610b72ab282c132a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
