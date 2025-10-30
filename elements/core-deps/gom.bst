kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.5.5-2-g9d39cbb0a4a1ec5c81d1d40e1eca82862e66fa18
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
