kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/3.37/gnome-tour-3.37.1.tar.xz
  ref: 0200b052109e1616b91a9b6f36a9c1ca2d4d9b18b68b5b590d6d199558edad28
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
