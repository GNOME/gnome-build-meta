kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.4-23-g162b15b2dead67d911400edf391a0fc0b4521314
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
