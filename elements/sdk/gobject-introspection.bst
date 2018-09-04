kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gobject-introspection/1.58/gobject-introspection-1.58.0.tar.xz
  ref: 27c1590a32749de0a5481ce897772547043e94bccba4bc0a7edb3d8513e401ec
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
