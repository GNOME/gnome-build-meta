kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-clocks.git
  track: master
  ref: 51.0-4-g05388c5d973b384fb6d3a2184ca559009b509c5b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/vorbis-tools.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
