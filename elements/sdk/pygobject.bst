kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.34/pygobject-3.34.0.tar.xz
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
