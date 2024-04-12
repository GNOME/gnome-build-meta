kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.5.1-1-ge93a389361729b6003fe7978cdf2dda9cda9e349
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
