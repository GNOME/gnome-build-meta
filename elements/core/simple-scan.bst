kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.34/simple-scan-3.34.4.tar.xz
  ref: 7f341beebd49ea0a7477dc5c28459aa96bac04b348d56e69d3d250ffc5317e77
depends:
- core-deps/PackageKit.bst
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
