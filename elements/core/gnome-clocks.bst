kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-clocks.git
  track: master
  ref: 48.alpha-4-gd0a4ae2db1b92aa2896c05cafa3c8c6a4349dcd3

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
