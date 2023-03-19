kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/44/gnome-clocks-44.0.tar.xz
  ref: 17d7a97365cb8f1a023a1d78f7501f3353217fa7577d73afe7d0ca1e3b4f3838
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
