kind: distutils
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.30/pygobject-3.30.1.tar.xz
  ref: e1335b70e36885bf1ae207ec1283a369b8fc3e080688046c1edb5a676edc11ce
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
