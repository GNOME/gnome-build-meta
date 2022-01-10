kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.42/pygobject-3.42.0.tar.xz
  ref: 9b12616e32cfc792f9dc841d9c472a41a35b85ba67d3a6eb427e307a6fe4367b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
