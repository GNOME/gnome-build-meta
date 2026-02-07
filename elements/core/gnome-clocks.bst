kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/50/gnome-clocks-50.beta.tar.xz
  ref: 6ad97d4207204f5903cd3847c6413b2e28889eaf70600fd3d792b05c976484a8
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
