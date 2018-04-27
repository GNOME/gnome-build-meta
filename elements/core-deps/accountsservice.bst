kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:accountsservice
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/polkit.bst
- base.bst
variables:
  conf-local: ''
