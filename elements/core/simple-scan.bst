kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.37/simple-scan-3.37.3.tar.xz
  ref: f5d8973c6b483d50d9ac08ae6c0802a7a6bb258538a8147266e73aa451eed952
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
