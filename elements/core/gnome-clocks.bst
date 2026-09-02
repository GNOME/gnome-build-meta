kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/51/gnome-clocks-51.rc.tar.xz
  ref: a7584eda043dcc85b17eecb96b9fb4275af4d0001b7f1d4af2a2b352bd5e21e5
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
