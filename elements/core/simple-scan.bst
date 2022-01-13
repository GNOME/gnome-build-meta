kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/40/simple-scan-40.7.tar.xz
  ref: 7c551852cb5af7d34aa989f8ad5ede3cbe31828cf8dd5aec2b2b6fdcd1ac3d53
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
