kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/47/gnome-backgrounds-47.beta.tar.xz
  ref: ac1421d30ee51b70d37f23590753ca9534c13c6dbdedbfe3dc9db870227a9736
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
