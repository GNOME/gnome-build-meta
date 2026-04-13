kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.56/pygobject-3.56.2.tar.gz
  ref: b816098969544081de9eecedb94ad6ac59c77e4d571fe7051f18bebcec074313

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
