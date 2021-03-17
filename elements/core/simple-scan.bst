kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/40/simple-scan-40.beta.tar.xz
  ref: 4ed7cadd5ff4611e011c43b6c8e188613191a3b4183d6a0ddb39c1e01695fb70
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
- sdk/libhandy.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
