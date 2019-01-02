kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.30/pygobject-3.30.4.tar.xz
  ref: 2dc1a1a444b82955e65b81c2a2511ecf8032404beba4ef1d48144168f2f64c43
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
