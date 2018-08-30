kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.29/pygobject-3.29.3.tar.xz
  ref: 85ba2bf6bbc18901f2ae628de94ee3d33a7f3c2e29689a35ce745211e7e730f2
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
