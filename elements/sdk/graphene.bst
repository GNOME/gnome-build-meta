kind: meson
sources:
- kind: git
  url: github_com:ebassi/graphene.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
