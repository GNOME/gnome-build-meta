kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.38/simple-scan-3.38.1.tar.xz
  ref: 1e82f80c5ddd4855a94763a2490432bd6d550e44b06f4cd44c47f265d2673a3f
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
