kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.38/simple-scan-3.38.2.tar.xz
  ref: a88d80729682888649cdfcdfa8692b0a34acde569dc080888f279afc3a9c4d0b
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
