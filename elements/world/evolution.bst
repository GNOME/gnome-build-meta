kind: cmake
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/evolution.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- core-deps/intltool.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/WebKitGTK.bst
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
- world/gtkspell.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DENABLE_LIBCRYPTUI=OFF
    -DENABLE_PST_IMPORT=OFF
    -DENABLE_YTNEF=OFF
    -DENABLE_TEXT_HIGHLIGHT=OFF
