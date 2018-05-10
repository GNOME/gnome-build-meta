kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:accountsservice
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/polkit.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
