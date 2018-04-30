kind: cmake
sources:
- kind: git
  url: git_gnome_org:evolution
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-autoar.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/WebKitGTK+.bst
- sdk/atk.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libgdata.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  cmake-local: -DENABLE_LIBCRYPTUI=OFF -DENABLE_PST_IMPORT=OFF -DENABLE_YTNEF=OFF
