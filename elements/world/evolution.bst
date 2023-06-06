kind: cmake
sources:
- kind: git_repo
  url: gnome:evolution.git
  track: master

build-depends:
- core-deps/intltool.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/cmark.bst
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gspell.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/at-spi2-core.bst
- sdk/gcr-3.bst
- sdk/gdk-pixbuf.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DENABLE_PST_IMPORT=OFF
    -DENABLE_YTNEF=OFF
    -DENABLE_TEXT_HIGHLIGHT=OFF
    -DWITH_GWEATHER4=ON
