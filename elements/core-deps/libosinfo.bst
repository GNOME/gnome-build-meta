kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/libosinfo-1.7.0.tar.gz
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-werror=no
