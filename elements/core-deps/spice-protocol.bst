kind: meson
sources:
- kind: tar
  url: https://www.spice-space.org/download/releases/spice-protocol-0.14.3.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
