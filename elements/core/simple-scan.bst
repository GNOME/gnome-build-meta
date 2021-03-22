kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.38/simple-scan-3.38.5.tar.xz
  ref: 2a9293aad60cdd2b51f3d43783afa1748e74b5e7df79dd4a8ef2fc940beeb66d
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
