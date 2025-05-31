kind: meson

sources:
- kind: tar
  url: libvirt:glib/libvirt-glib-5.0.0.tar.xz
  ref: 9bfec346382416a3575d87299bc641b2a464aa519fd9b1287e318aa43a2f3b8b

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libvirt.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgit_werror=disabled
    -Ddocs=disabled
