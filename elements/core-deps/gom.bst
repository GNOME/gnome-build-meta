kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.4-18-g1d4fbe93ca1822d6f8f2002b18c9aad21f3c7c38
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
