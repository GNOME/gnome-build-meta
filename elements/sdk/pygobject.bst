kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.54/pygobject-3.54.3.tar.gz
  ref: a8da09134a0f7d56491cf2412145e35aa74e91d760e8f337096a1cda0b92bae7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
