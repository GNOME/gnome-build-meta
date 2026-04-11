kind: meson

sources:
- kind: git_repo
  url: gitlab:libvirt/libvirt-glib.git
  track: 'v*.*.*'
  exclude:
  - '*rc*'

  ref: v5.0.0-0-g9b26bec8828a38fcb3bc0e5f6f33b03fa99c4b68
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
