kind: meson
sources:
- kind: tar
  url: github_com:linuxwacom/libwacom/releases/download/libwacom-1.1/libwacom-1.1.tar.bz2
  ref: 8cb483593676332e92d3fe1fe816350f136bb906fcee329579d6cb9802d99e02
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dtests=false
