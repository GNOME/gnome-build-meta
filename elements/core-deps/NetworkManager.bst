kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:NetworkManager/NetworkManager.git
  track: master
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
- base.bst
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev  --with-crypto=gnutls --disable-more-warnings
    --disable-json-validation --disable-ovs
