kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 43-0-g3dc06f83fda4169432a43443cfa1617bbbd4810b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
