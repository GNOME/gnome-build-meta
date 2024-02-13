kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/46/gnome-backgrounds-46.beta.tar.xz
  ref: 48f22f8d1f83598ade5c3a77aa073329143131ffcc11abc2e81f6ceea725c0c4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/libjxl.bst
- sdk/librsvg.bst
- sdk/webp-pixbuf-loader.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
