kind: meson
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.30/NetworkManager-1.30.0.tar.xz
  ref: 39f01232628bc2ecbca1a931b8f45fdd8f0b7150be65332901c97ecdee98c3f9
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
depends:
- core-deps/glibmm-2.4.bst
- core-deps/ModemManager.bst
- core-deps/mobile-broadband-provider-info.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libndp.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmore_asserts=no
    -Dcrypto=gnutls
    -Dintrospection=true
    -Dvapi=true
    -Ddocs=true
    -Dtests=no
    -Dlibaudit=no
    -Dnmtui=false
    -Dselinux=false
    -Dqt=false
    -Dovs=false
