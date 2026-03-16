kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.56/pygobject-3.56.1.tar.gz
  ref: 2ec1cc8c55c7ffeebb97e58a9bba7aa1e74611f1173628084685446804a8881a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
