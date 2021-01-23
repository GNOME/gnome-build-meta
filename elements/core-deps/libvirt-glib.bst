kind: meson
sources:
- kind: tar
  url: https://libvirt.org/sources/glib/libvirt-glib-3.0.0.tar.gz
build-depends:
- core-deps/intltool.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libvirt.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgit_werror=disabled
    -Ddocs=disabled
