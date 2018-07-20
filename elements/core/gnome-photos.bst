kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-photos/3.29/gnome-photos-3.29.4.tar.xz
  ref: cfa0db2c0e0af13883f9f18fdd6370767c7cc9edb52307f660847da3502f0034
depends:
- core-deps/babl.bst
- core-deps/gdk-pixbuf.bst
- core-deps/gegl.bst
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gtk+-3.bst
- core-deps/libdazzle.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
