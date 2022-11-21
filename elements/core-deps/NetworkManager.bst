kind: meson
sources:
- kind: tar
  url: gnome_downloads:NetworkManager/1.40/NetworkManager-1.40.4.tar.xz
  ref: b23214b5481c80f93f7515fcdeac11c09c8c96466872d7ec386d64fb5fd12cbf
build-depends:
- core-deps/intltool.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/ModemManager.bst
- core-deps/mobile-broadband-provider-info.bst
- core-deps/ppp.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libndp.bst
- freedesktop-sdk.bst:components/libpsl.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/polkit.bst
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
