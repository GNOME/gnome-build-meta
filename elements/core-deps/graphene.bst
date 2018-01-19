kind: meson
sources:
- kind: git
  url: github_com:ebassi/graphene.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/meson.bst
- base.bst
