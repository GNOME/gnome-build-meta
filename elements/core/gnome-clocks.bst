kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/3.36/gnome-clocks-3.36.0.tar.xz
  ref: 4c978b0c7f7b9daebd272d0175f8a54415e2078f134f48add5cf24362eef49c6
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
