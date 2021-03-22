kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/3.38/gnome-tour-3.38.0.tar.xz
  ref: 855fc2fcbcb3e9ef7385edc5470e12a31e6032a4e10cfe7bc1509381c7a48e78
build-depends:
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- core-deps/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
