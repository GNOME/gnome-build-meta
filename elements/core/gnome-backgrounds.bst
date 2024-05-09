kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 46.0-2-gc0b74d6c42aa28f7ae2a3986fe9912a9cbeb7bf1

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
