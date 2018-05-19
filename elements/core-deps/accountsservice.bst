kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:accountsservice
  track: master
depends:
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
