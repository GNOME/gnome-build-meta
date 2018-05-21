kind: meson
sources:
- kind: git
  url: github_com:ebassi/graphene.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
