kind: cmake
sources:
- kind: git
  url: git_gnome_org:evolution
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/atk.bst
- core-deps/evolution-data-server.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- core-deps/geocode-glib.bst
- sdk/glib.bst
- core-deps/gnome-autoar.bst
- sdk/gnome-online-accounts.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libgdata.bst
- core-deps/libgweather.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- sdk/yelp-tools.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
variables:
  cmake-local: -DENABLE_LIBCRYPTUI=OFF -DENABLE_PST_IMPORT=OFF -DENABLE_YTNEF=OFF
