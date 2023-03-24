kind: meson

sources:
- kind: git_tag
  url: gnome:gtk-vnc.git
  track: master
  ref: v1.3.1-33-g301a0f84ce3821c1e46e80a2b05334ed434cef6e
- kind: git_module
  url: gitlab:keycodemap/keycodemapdb.git
  path: subprojects/keycodemapdb
  ref: e15649b83a78f89f57205927022115536d2c1698

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk-deps/vala.bst
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
