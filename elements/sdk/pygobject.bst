kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.50/pygobject-3.50.1.tar.gz
  ref: a4df4e7adef7f4f01685a763d138eac9396585bfc68a7d31bbe4fbca2de0d7cb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
