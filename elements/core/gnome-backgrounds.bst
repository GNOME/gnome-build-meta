kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/48/gnome-backgrounds-48.beta.tar.xz
  ref: 0fa6aa106ee5bcf476d26350582f0369c802a648f8d374871fd36039453f6be9
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
