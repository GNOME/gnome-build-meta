kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/NetworkManager/1.14/NetworkManager-1.14.4.tar.xz
  ref: bdb216eac0f34a6d7e95e455fe1a8a718f80f2a9dd9a377a75672c7338807230
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
