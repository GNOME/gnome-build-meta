kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/48/gnome-backgrounds-48.0.tar.xz
  ref: 2d6baa011ee97804c7561f7e1cbd8d4763e30b55b8818dda78f9f75afb8d8d05
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
