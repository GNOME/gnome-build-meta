kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-clocks.git
  track: master
  ref: 44.0-46-g1294eeeef58438ea07c2107fa881d474455d350a

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
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:bootstrap-import.bst
