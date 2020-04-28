kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.34/simple-scan-3.34.6.tar.xz
  ref: 019b2d4d65899efb412b7a46aca7ea01b46c5663dbfa1c0c9623aec5141de95b
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
