kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/47/gnome-backgrounds-47.0.tar.xz
  ref: 874a4a39c4261736f6a854722833400b612441c4681aa5982d90b15abc9c91fd
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
