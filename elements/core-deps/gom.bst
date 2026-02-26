kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.5.6-1-gd546faa42b0b3f8144e15f422869dc8288c1d7e2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
