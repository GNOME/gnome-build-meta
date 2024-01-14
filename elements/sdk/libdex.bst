kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.4/libdex-0.4.3.tar.xz
  ref: adead71f660e1e44f182c037a48ae528540c028445c1b6715d1ea3a5cac64580
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
