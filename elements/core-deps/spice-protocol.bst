kind: meson
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.14.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
