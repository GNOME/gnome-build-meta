kind: meson
sources:
- kind: tar
  url: spice:releases/spice-protocol-0.14.2.tar.xz
  ref: 8f3a63c8b68300dffe36f2e75eac57afa1e76d5d80af760fd138a0b3f44cf1e9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
