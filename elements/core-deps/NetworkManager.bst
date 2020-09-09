kind: autotools
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.22/NetworkManager-1.22.16.tar.xz
  ref: 377aa053752eaa304b72c9906f9efcd9fbd5f7f6cb4cd4ad72425a68982cffc6
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
