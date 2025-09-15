kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/49/gnome-backgrounds-49.0.tar.xz
  ref: 01fe260de58ba00e44aba589a998e33e8bc7aecc701df0bee64cf4cfba44f4b5
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
