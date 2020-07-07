kind: autotools
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.27/NetworkManager-1.27.0.tar.xz
  ref: bbfad15b3fe83dc72089cb7e5790e05444aa9c44079787519c5e3ae362301c38
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
depends:
- core-deps/iptables.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libndp.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
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
