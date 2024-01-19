kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 46.alpha-3-g1cb29018ce979e6537d00e1a0503192bd820d671

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
