kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/NetworkManager/1.14/NetworkManager-1.14.4.tar.xz
  ref: 35a3ede4c7d12d6212033c9e44cb82b7692f38063b53a067567f02f5937c8c18
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
