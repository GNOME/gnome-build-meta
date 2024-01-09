kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 45.0-26-g4099ea4d6fd37585c7c29eef2020ac0f430ffdc6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
