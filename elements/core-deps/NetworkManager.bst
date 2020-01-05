kind: autotools
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.23/NetworkManager-1.23.1.tar.xz
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/iptables.bst
- core-deps/libgudev.bst
- core-deps/libndp.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    PYTHON=python3
    --with-udev-dir=/usr/lib/udev
    --with-crypto=gnutls
    --enable-introspection
    --disable-more-warnings
    --disable-json-validation
    --disable-ovs
