kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.38/simple-scan-3.38.0.tar.xz
  ref: 4356affd035f01a57b182199effd9808700efccb498bdc8367bf09bce404c311
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
