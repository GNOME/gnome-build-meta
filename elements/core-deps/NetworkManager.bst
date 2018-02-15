kind: autotools
sources:
- url: https://download.gnome.org/sources/NetworkManager/1.10/NetworkManager-1.10.4.tar.xz
  kind: tar
  ref: 7de0a7b77c2590a44195da4630b55d61be907f69ea1f3f1bd38da076ebad35fe
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
