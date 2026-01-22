kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-clocks.git
  track: master
  ref: 50.alpha-32-g3f2ee3a68c9b0e66316da354f32548224b42156e

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/itstool.bst
# workaround: ffmpeg is not declaring sdl3 as a dependency
- freedesktop-sdk.bst:components/sdl3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
