kind: meson
sources:
- kind: git_repo
  url: gitlab:libosinfo/libosinfo.git
  track: 'v*.*.*'
  ref: v1.12.0-0-gb505ef5161d2552102a743acd4ad83298d3d8f99
- kind: patch
  path: patches/libosinfo/attribute-unused.patch
- kind: patch
  path: patches/libosinfo/0001-build-Avoid-hardcoded-werror.patch
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst

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
