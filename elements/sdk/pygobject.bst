kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.48/pygobject-3.48.1.tar.xz
  ref: 3a0a2c0c0f25931b5840649c54834b9e58a63148d37fa9f6308887b7027e15c2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
