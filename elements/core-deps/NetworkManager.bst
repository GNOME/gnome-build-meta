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
kind: autotools
sources:
- kind: tar
  ref: 4fce640d4f3bdabd9f6ce154597b419a303f24823c4089febbfcd7794baf2988
  url: https://download.gnome.org/sources/NetworkManager/1.13/NetworkManager-1.13.3.tar.xz
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev  --with-crypto=gnutls --disable-more-warnings
    --disable-json-validation --disable-ovs
