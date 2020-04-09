kind: meson
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/libosinfo-1.7.1.tar.xz
- kind: git_tag
  url: https://github.com/pciutils/pciids.git
  ref: 769867fb689170061c2cdaa910201ff5017cd9ab
- kind: git_tag
  url: https://github.com/usbids/usbids.git
  ref: d41c7bcdcb8da54687d66e254d879517f00d9d21
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-tests=false
