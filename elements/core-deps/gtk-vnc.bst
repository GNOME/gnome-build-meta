kind: meson

sources:
- kind: git_repo
  url: gnome:gtk-vnc.git
  track: master
  ref: 1.5.0-10-g3a486a25ddec304138bfd21a1778004c5c2123c2
- kind: git_module
  url: gitlab:keycodemap/keycodemapdb.git
  path: subprojects/keycodemapdb
  ref: e15649b83a78f89f57205927022115536d2c1698

build-depends:
- sdk/gi-docgen.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dintrospection=enabled
    -Dpulseaudio=enabled
    -Dsasl=enabled
    -Dwith-vala=enabled
