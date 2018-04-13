kind: autotools
sources:
- url: https://download.gnome.org/sources/NetworkManager/1.11/NetworkManager-1.11.2.tar.xz
  kind: tar
  ref: db10f984e08c46704a6bf2646dd7476f01bf496ee80b2d150f08486c78673463
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
