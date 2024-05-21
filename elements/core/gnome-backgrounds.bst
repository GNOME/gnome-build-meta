kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 46.0-4-g1ec20ab10e39539a53af911aa9ce319088bcfcfb

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
