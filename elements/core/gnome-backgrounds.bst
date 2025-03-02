kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/48/gnome-backgrounds-48.rc.tar.xz
  ref: 6316f70b17e12b10478db73c02f46ffaed399988e9033fc5ea2c61358f062138
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
