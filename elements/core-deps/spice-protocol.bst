kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.12.15.tar.bz2
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
