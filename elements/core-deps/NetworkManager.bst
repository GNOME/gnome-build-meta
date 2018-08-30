kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/NetworkManager/1.13/NetworkManager-1.13.3.tar.xz
  ref: 4fce640d4f3bdabd9f6ce154597b419a303f24823c4089febbfcd7794baf2988
depends:
- core-deps/iptables.bst
- core-deps/libgudev.bst
- core-deps/libndp.bst
- core-deps/ppp.bst
- sdk/dbus-glib.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/pygobject.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev  --with-crypto=gnutls --disable-more-warnings
    --disable-json-validation --disable-ovs
