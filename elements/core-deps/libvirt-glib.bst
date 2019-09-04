kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/glib/libvirt-glib-2.0.0.tar.gz
depends:
- filename: core-deps/intltool.bst
  type: build
- core-deps/libvirt.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-werror=no
