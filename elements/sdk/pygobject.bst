kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.54/pygobject-3.54.2.tar.gz
  ref: 03cffeb49d8a1879b621d8f606ac904218019a0ae699b1cd3780a8ee611e696b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
