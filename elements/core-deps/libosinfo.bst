kind: autotools
sources:
- kind: git_tag
  url: gitlab_com:libosinfo/libosinfo.git
  track: master
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids
- kind: patch
  path: files/libosinfo/0001-build-Use-a-minimum-gettext-requirement-rather-than-.patch
depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
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
  conf-local: >-
    --enable-werror=no
