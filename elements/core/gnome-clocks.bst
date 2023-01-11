kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/43/gnome-clocks-43.0.tar.xz
  ref: b0743b70d00880aa3bcdcc7f7f34c8c2286257b5c81737d4f981bc8c4f4f981d
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
