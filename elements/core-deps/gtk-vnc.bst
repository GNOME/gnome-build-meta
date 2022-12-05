kind: meson

sources:
- kind: git_tag
  url: gnome:gtk-vnc.git
  track: master
  ref: v1.3.1-6-gf493a509d592462ba7bcf96a7d04a21f43c0366d
  submodules:
    subprojects/keycodemapdb:
      checkout: true
      url: gitlab:keycodemap/keycodemapdb.git

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dintrospection=enabled
    -Dpulseaudio=enabled
    -Dsasl=enabled
    -Dwith-vala=enabled
