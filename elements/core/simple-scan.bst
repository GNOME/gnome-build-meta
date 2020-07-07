kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.37/simple-scan-3.37.2.tar.xz
  ref: 734cce508d64a460b398e0e6bbd77a5f6bc7655eeeeb9347175a7557b1522118
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
