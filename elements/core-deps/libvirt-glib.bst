kind: autotools
sources:
- kind: git
  url: github_com:libvirt/libvirt-glib.git
  track: master
depends:
- core-deps/libvirt.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-werror=no
