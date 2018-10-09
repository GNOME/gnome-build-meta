kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/glib/libvirt-glib-1.0.0.tar.gz
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
