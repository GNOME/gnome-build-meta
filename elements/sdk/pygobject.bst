kind: distutils
sources:
- kind: tar
  url: gnome_downloads:pygobject/3.33/pygobject-3.33.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
