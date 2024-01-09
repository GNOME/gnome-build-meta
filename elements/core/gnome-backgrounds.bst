kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 45.0-24-g4b62c9c0f7a7b614e3261919148e71a87718c8fd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
