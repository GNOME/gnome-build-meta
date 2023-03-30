kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 44.0-2-g6d3574e323838d82c4107e184d1ad30a4ac9fc20

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
