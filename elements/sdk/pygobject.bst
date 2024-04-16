kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: master
  ref: 3.48.0-23-gcfecf8061296ad74207f7a675f6f5722584c44a6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
