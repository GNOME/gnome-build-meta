kind: meson
sources:
- kind: tar
  url: gnome_downloads:folks/0.13/folks-0.13.2.tar.xz
  ref: 0263d6b8de41acabbc95e9a2418374271fb649412a1de3e3ef6ad4a3a5270173
depends:
- core-deps/evolution-data-server.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Deds_backend=true -Dlibsocialweb_backend=false -Dtelepathy_backend=false
