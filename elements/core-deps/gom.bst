kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.4-22-g8b1005a7ae44cd89be40211d1a551f5b96fd935e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
