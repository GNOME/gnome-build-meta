kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/50/gnome-clocks-50.alpha.tar.xz
  ref: b2410efdb3919d4422e19d254b959fbed9341e82f00658dc732359577d33aec3
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
