kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-photos/3.34/gnome-photos-3.34.2.tar.xz
  ref: 3c59c76ef28618ec055a1799d1040287b90a0b021feb0a02b1eac28e9c2eb41a
depends:
- core-deps/babl.bst
- core-deps/gegl.bst
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: components/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled_tests=false -Ddogtail=false
