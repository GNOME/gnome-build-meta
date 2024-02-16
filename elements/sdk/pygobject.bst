kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: master
  ref: 3.47.0-4-ga858105ccbf18b55b74b07a42b5a84d18c037fa8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
