kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.56/pygobject-3.56.0.tar.gz
  ref: 4fbb5bf47524e01026f8e309dd54233eb0f75f2281392c5bf0df5d9041cc7891

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
