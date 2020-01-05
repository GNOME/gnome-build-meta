kind: meson
sources:
- kind: tar
  url: gnome_downloads:folks/0.13/folks-0.13.1.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/evolution-data-server.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Deds_backend=true
    -Dlibsocialweb_backend=false
    -Dtelepathy_backend=false
