kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.55/pygobject-3.55.3.tar.gz
  ref: 14f52750312bd689dde3a75e968849e3e16c4a0803f1c7734dffb00a1c847af9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
