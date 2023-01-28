kind: meson

sources:
- kind: git_tag
  url: gnome:pygobject.git
  track: master
  ref: 3.43.1-1-g61ef471f5759b1ef676e5273318e7fdb282d7a75

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
