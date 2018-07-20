kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/NetworkManager/1.13/NetworkManager-1.13.1.tar.xz
  ref: 8f6b23cde3ef03cafb4a6820c07e5be4d919e372d1f87f7078bdb88c86da1bf7
depends:
- core-deps/dbus-glib.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/iptables.bst
- core-deps/libgudev.bst
- core-deps/libndp.bst
- core-deps/ppp.bst
- core-deps/pygobject.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev  --with-crypto=gnutls --disable-more-warnings
    --disable-json-validation --disable-ovs
