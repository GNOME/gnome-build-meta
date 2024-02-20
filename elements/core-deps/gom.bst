kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.4-25-g4bd6f5ca5cc8f417a209f598a4fa2c7eb91f0cf0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
