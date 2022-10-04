kind: meson

sources:
- kind: git_tag
  url: gnome:pygobject.git
  track: master
  ref: 3.42.0-44-g4b421597d1885c725cbcdd44c4d04277454bee85

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
