kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.44/pygobject-3.44.2.tar.xz
  ref: 6f806023c43c446e2a8dac5a9c2b0f2db13ff715bb579fcb8e049449ffcd82b7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
