kind: autotools
sources:
- kind: git
  url: git_gnome_org:gjs
  track: master
depends:
- core-deps/gobject-introspection.bst
- core-deps/mozjs52.bst
- base.bst
variables:
  conf-local: --enable-installed-tests
