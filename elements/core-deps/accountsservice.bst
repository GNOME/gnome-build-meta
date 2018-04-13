kind: autotools
sources:
- url: http://www.freedesktop.org/software/accountsservice/accountsservice-0.6.46.tar.xz
  kind: tar
  ref: 1865b98b831ce7e8656cabee213f9a6803cf45032594099410900b0557b3ad25
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: ''
