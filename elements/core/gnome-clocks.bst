kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/40/gnome-clocks-40.0.tar.xz
  ref: c2ea33b1ce6431bb2faf97e0fbc45f7397f784f054e946da4b0d596dc893a309
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
