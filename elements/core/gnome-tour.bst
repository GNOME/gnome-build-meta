kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/3.37/gnome-tour-3.37.92.tar.xz
  ref: 4aabb682ea737d60ef7305fc36f33285bae32ff3d0cd38032598c682e5596ba2
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
