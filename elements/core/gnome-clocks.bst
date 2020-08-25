kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/3.37/gnome-clocks-3.37.91.tar.xz
  ref: 34de824b3fee68c5554b6904b02bcdc7e4b921f9a8e91a780f43e2898dbfb36c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core-deps/libhandy.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
