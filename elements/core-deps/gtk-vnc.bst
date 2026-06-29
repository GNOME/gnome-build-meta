kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk-vnc/1.5/gtk-vnc-1.5.0.tar.xz
  ref: c0beb4747528ad931da43acc567c6a0190f7fc624465571ed9ccece02c34dd23
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dintrospection=enabled
    -Dpulseaudio=enabled
    -Dsasl=enabled
    -Dwith-vala=enabled
