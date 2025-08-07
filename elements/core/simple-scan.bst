kind: meson

sources:
- kind: tar
  url: gnome_downloads:simple-scan/46/simple-scan-46.0.tar.xz
  ref: c16e6590142fe563be5143122b3bbb53f6b00a7da9d952f61c47fa26f7b4f0a9
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
