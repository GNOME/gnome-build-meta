kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/NetworkManager/1.15/NetworkManager-1.15.1.tar.xz
  ref: a89de84c1606b2595e7c42575f4a494f5dc1b94c9aab70fede347105452b3b11
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
