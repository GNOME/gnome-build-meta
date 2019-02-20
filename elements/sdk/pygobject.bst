kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.31/pygobject-3.31.3.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
