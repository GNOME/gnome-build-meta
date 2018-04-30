kind: autotools
sources:
- kind: git
  url: git_gnome_org:gjs
  track: master
depends:
- sdk/gobject-introspection.bst
- sdk/mozjs52.bst
- base.bst
variables:
  conf-local: --enable-installed-tests
