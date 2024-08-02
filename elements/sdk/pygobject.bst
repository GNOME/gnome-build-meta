kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.48.0-76-ge5ae70821c11894a6ec9ca95e3763709765ea9c4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
