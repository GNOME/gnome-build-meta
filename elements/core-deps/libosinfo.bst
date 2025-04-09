kind: meson
sources:
- kind: tar
  url: pagure_releases:libosinfo/libosinfo-1.12.0.tar.xz
  ref: ad8557ece26793da43d26de565e3d68ce2ee6bfb8d0113b7cc7dfe07f6bfc6b6
- kind: patch
  path: patches/libosinfo/attribute-unused.patch
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable-tests=false

config:
  install-commands:
    (>):
    - install -Dm644 -t '%{install-root}%{datadir}/libosinfo' pci.ids usb.ids
