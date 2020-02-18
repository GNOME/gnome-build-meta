kind: autotools
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.12.15.tar.bz2
  ref: 8b4db23baa4b1337a50d049d9bf43f932331dd95f204836c0ce46c4962306419
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
