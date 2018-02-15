kind: autotools
sources:
- url: http://www.freedesktop.org/software/accountsservice/accountsservice-0.6.45.tar.xz
  kind: tar
  ref: fb0fc293aa75d59f5ef5db719d37a21831c4dd74a97526ee7e51ce936311ef26
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: ''
