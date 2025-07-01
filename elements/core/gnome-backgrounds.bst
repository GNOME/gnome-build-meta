kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/48/gnome-backgrounds-48.2.1.tar.xz
  ref: 6a1c5b7b2e0d8f5ce977926d55f9c2d65dd180822cdea5e59150dcfb5abd1ed9
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
