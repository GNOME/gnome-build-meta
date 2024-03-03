kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/46/simple-scan-46.beta.tar.xz
  ref: 5c64717662339fdf1f07a140997b877e4967549fd2755778729878a6a4131676
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
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libgusb.bst
