kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.36/simple-scan-3.36.6.tar.xz
  ref: da03a45967b6caac51d6c4aad2f4b05a6188e8bdaf4ce1bd318996282dfe3075
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
