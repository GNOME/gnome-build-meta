kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtk-vnc/1.0/gtk-vnc-1.0.0.tar.xz
build-depends:
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dintrospection=true
    -Dpulseaudio=enabled
    -Dsasl=enabled
    -Dwith-vala=true
