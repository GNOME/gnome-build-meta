kind: autotools
sources:
- kind: git
  url: github_com:libvirt/libvirt-glib.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libvirt.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-werror=no
