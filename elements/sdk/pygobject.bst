kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.47/pygobject-3.47.0.tar.xz
  ref: 3236b7d67166e86db721f6cec9a8cbf6c9df7d45bbcdfaa05da00c4546bd4d20
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
