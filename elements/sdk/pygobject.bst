kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.53/pygobject-3.53.0.tar.gz
  ref: 9952c8a5f48ed5c7e87de906443dbbb99b2da03c649f451dfdea2f8bbd88c9b2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
