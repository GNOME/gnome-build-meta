kind: meson
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.14.3.tar.xz
  ref: f986e5bc2a1598532c4897f889afb0df9257ac21c160c083703ae7c8de99487a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
