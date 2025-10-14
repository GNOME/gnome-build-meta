kind: meson

sources:
- kind: tar
  url: gnome_downloads:simple-scan/49/simple-scan-49.0.1.tar.xz
  ref: e19762422663ef4bf5d39f6e75f4d61a8de1813729a96e57e04e81764e01eae2
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libgusb.bst
