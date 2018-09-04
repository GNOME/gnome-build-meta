kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.30/pygobject-3.30.0.tar.xz
  ref: 7d20ba1475df922f4c26c69274ab89f7e7730d2101e46846caaddc53afd56bd0
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
