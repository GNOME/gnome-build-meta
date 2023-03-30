kind: meson

sources:
- kind: git_tag
  url: gnome:pygobject.git
  track: master
  ref: 3.44.0-14-g4dbe022d3fc744963823ba915b9b97dd6f917dc7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
