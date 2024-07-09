kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/46/gnome-backgrounds-46.0.tar.xz
  ref: 4ddd3ac439a4a067876805921bb75f4d3c8b85a218d47c276dddde8928443c2e
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
