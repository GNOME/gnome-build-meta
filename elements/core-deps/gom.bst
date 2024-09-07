kind: meson
sources:
- kind: git_repo
  url: gnome:gom.git
  track: master
  ref: 0.5.3-3-g681e7303b72b3519e32b31f17e6bf48ba2faa79c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
