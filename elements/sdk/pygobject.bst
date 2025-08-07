kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.52/pygobject-3.52.3.tar.gz
  ref: 00e427d291e957462a8fad659a9f9c8be776ff82a8b76bdf402f1eaeec086d82

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
