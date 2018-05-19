kind: meson
sources:
- kind: git
  url: github_com:ebassi/graphene.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
