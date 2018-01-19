kind: cmake
sources:
- kind: git
  url: git_gnome_org:evolution
  track: master
depends:
- core-deps/WebKit.bst
- core-deps/atk.bst
- core-deps/evolution-data-server.bst
- core-deps/gcr.bst
- core-deps/gdk-pixbuf.bst
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core-deps/libnotify.bst
- core-deps/libsoup.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  cmake-local: -DENABLE_LIBCRYPTUI=OFF -DENABLE_PST_IMPORT=OFF -DENABLE_YTNEF=OFF
