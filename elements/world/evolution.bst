kind: cmake
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/evolution
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/WebKitGTK+.bst
- sdk/atk.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- sdk/yelp-tools.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DENABLE_LIBCRYPTUI=OFF -DENABLE_PST_IMPORT=OFF -DENABLE_YTNEF=OFF
