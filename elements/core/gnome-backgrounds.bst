kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 46.alpha-0-g329bc882e3cadb46f828422223f5c310c4c1f5e1

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
