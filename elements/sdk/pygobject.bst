kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.30/pygobject-3.30.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
