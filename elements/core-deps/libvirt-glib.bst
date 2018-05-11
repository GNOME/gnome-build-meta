kind: autotools
sources:
- kind: tar
  url: ftp://libvirt.org/libvirt/glib/libvirt-glib-1.0.0.tar.gz
  ref: ca9158d01cc4d9e0218f94f8c9ee04ae367d8c3b4396daaebca2c4b89a2e8a47
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-werror=no
