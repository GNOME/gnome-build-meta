kind: meson

sources:
- kind: git_tag
  url: gnome:pygobject.git
  track: master
  ref: 3.44.0-11-g7c102de45da29cd9445e25c0758c8ab70b415419

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
