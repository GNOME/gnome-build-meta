kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.48/pygobject-3.48.2.tar.xz
  ref: 0794aeb4a9be31a092ac20621b5f54ec280f9185943d328b105cdae6298ad1a7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
