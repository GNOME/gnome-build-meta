kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: master
  ref: 3.48.0-2-ga6427f600da53c2049d9f95a7e3ed5d93c86af90

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
