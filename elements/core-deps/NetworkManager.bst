kind: autotools
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.18/NetworkManager-1.18.4.tar.xz
depends:
- core-deps/iptables.bst
- core-deps/libgudev.bst
- core-deps/libndp.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pygobject.bst
- sdk/vala.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: "PYTHON=python3 --with-udev-dir=/usr/lib/udev --with-crypto=gnutls --enable-introspection\
    \ --disable-more-warnings --disable-json-validation --disable-ovs\n"
