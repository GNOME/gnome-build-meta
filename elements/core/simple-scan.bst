kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/42/simple-scan-42.1.tar.xz
  ref: 859bc0611c1769b5bdaba9639deed359f50474c2eecf58bbbfd7ce21911b2226
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
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
- freedesktop-sdk.bst:bootstrap-import.bst
