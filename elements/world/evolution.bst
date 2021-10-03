kind: cmake
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/evolution.git
  track: master

build-depends:
- core-deps/intltool.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/libgdata.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/atk.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsoup-2.4.bst
- sdk/webkit2gtk-4.0.bst
- world/gtkspell.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DENABLE_LIBCRYPTUI=OFF
    -DENABLE_PST_IMPORT=OFF
    -DENABLE_YTNEF=OFF
    -DENABLE_TEXT_HIGHLIGHT=OFF
