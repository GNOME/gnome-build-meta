kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.9/libdex-0.9.0.tar.xz
  ref: b46a8613d923eb425d24f7e8149836a01d4f2533141ec666ea9f149fe128ac04
build-depends:
- sdk/gi-docgen.bst
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
