kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.35/simple-scan-3.35.92.tar.xz
  ref: 3f91c876cdda3c8798a461091aaa8513eab55dd0b0636ba55f64360766027ed3
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
