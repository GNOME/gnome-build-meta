kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/40/gnome-tour-40.0.tar.xz
  ref: 7063223869a074727414bec7db738d8506216ee84ccfc3bca7dac52e498c1bf9
build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
