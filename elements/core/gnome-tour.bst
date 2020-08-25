kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/3.37/gnome-tour-3.37.91.tar.xz
  ref: aa27220d555fc7de28953a37d79367cb25442edb1007cea065522f8a81b15abc
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
