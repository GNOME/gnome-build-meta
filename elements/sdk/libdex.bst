kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.5/libdex-0.5.1.tar.xz
  ref: de9a2ab9084aa7774c374a3eddbfc4b235fa82c78fd3c1c7468c7d892c42f3c1
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
