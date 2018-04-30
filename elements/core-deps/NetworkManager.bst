kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:NetworkManager/NetworkManager.git
  track: master
depends:
- core-deps/iptables.bst
- core-deps/libndp.bst
- core-deps/ppp.bst
- sdk/dbus-glib.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/libgudev.bst
- sdk/pygobject.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev  --with-crypto=gnutls --disable-more-warnings
    --disable-json-validation --disable-ovs
