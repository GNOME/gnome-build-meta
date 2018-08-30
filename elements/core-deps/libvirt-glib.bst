kind: autotools
sources:
- kind: tar
  url: ftp://libvirt.org/libvirt/glib/libvirt-glib-1.0.0.tar.gz
  ref: ca9158d01cc4d9e0218f94f8c9ee04ae367d8c3b4396daaebca2c4b89a2e8a47
depends:
- core-deps/libvirt.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-werror=no
