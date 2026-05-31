kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.56/pygobject-3.56.3.tar.gz
  ref: 12760e4a0e3d04b6eb95e06f7a27e362c826d567ea613373a92c003b6c70d2d6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
