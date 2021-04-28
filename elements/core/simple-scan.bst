kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/40/simple-scan-40.0.tar.xz
  ref: 13811bb2a8619e63a43fc2ef6b71359f2d5c4084c6d5c8b3aad61724b20751af
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
