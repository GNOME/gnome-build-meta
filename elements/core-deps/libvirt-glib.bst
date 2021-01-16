kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/glib/libvirt-glib-3.0.0.tar.gz
  ref: 7fff8ca9a2b723dbfd04223b1c7624251c8bf79eb57ec27362a7301b2dd9ebfe
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libvirt.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-werror=no
