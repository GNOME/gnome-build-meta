kind: autotools
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.20/NetworkManager-1.20.10.tar.xz
  ref: d1de21754ad125671e9c50b5a67f9e47f7c9409937bac08ae9a8005a445945c5
depends:
- filename: core-deps/intltool.bst
  type: build
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
- filename: components/curl.bst
  junction: freedesktop-sdk.bst
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/nss.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: PYTHON=python3 --with-udev-dir=/usr/lib/udev --with-crypto=gnutls --enable-introspection
    --disable-more-warnings --disable-json-validation --disable-ovs
