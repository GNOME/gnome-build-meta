kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.54/pygobject-3.54.5.tar.gz
  ref: b6656f6348f5245606cf15ea48c384c7f05156c75ead206c1b246c80a22fb585

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
