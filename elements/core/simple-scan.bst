kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/40/simple-scan-40.1.tar.xz
  ref: ebee39ab1fe4ca053c4ed2bd3a3ca76742ff109436dd0645d3415622132ba0b4
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
