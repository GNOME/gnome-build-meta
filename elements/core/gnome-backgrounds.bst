kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/48/gnome-backgrounds-48.alpha.tar.xz
  ref: 6576e7097e79c7f948c461aa7f6b6468935cfcc685edc991c2abedb699de82a8
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
