kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 51.0-19-g40571d36848fcadc5979b09f2e0adee7925cea83

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
