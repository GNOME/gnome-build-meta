kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.36/simple-scan-3.36.7.tar.xz
  ref: 7a81b04a0f36024318e073a08647a305cf5ee296df4dbfbd1739c84c2975737a
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
