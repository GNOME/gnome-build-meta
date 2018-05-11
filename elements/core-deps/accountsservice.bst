kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/accountsservice/accountsservice-0.6.47.tar.xz
  ref: e34efbc79098b1a5a48e19389e6472b3b56fa9cc64c60017679e61ecc43d130d
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: ''
