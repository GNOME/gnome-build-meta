kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.12.15.tar.bz2
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
