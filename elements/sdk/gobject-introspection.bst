kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gobject-introspection/1.58/gobject-introspection-1.58.3.tar.xz
  ref: 2a5e0f69459af7ca4c41b8f4e19d9c80ddf877834bb0e7fdd420e2495ae2eda8
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --with-python=python3
