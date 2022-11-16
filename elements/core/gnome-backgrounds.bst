kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 43-5-g9ce85be5d2e4663953ee0b1f137fdf5c21a12ee1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
