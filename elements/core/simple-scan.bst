kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.36/simple-scan-3.36.3.tar.xz
  ref: 7083beab8cb8640225938cda76190abca91093d6960d555505b23930b13c5f3f
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
