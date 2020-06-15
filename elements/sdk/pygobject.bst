kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.36/pygobject-3.36.1.tar.xz
  ref: d1bf42802d1cec113b5adaa0e7bf7f3745b44521dc2163588d276d5cd61d718f
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
