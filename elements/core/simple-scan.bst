kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.37/simple-scan-3.37.92.tar.xz
  ref: 0c654590bcfa4fe1619dd6e766e73a418d6596445f2b230d46563040aefb4ffe
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
