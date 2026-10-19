kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 51.0-14-g76ad782dd3afd1e16b14022872a3aa9561577355

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
