kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.36/simple-scan-3.36.0.tar.xz
  ref: f57d8be3c22f786efe576da04288951664e6f9fa0ec5c79afb5c2c88a11f14a5
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
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
