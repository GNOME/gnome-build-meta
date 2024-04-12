kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: master
  ref: 3.48.0-21-g75308b835f9d01287afd10c70153d4acb152c8db

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
