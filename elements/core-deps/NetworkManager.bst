kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/NetworkManager/1.10/NetworkManager-1.10.6.tar.xz
  ref: 6af0b1e856a3725f88791f55c4fbb04105dc0b20dbf182aaec8aad16481fac76
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- core-deps/pygobject.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev  --with-crypto=gnutls --disable-more-warnings
    --disable-json-validation --disable-ovs
