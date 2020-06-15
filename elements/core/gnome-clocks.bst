kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/3.36/gnome-clocks-3.36.2.tar.xz
  ref: f11b1b22ec1f285e509883684c0b1f4a51496aea105591239e5b26f8986751e6
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
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
