kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.30/pygobject-3.30.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pycairo.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
