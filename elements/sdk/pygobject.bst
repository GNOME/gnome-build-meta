kind: meson

sources:
- kind: git_tag
  url: gnome:pygobject.git
  track: master
  ref: 3.42.0-45-gc57bd80c07a4f846c4ebcc55dcd10f629319c0be

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
