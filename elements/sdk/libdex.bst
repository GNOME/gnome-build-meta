kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.10/libdex-0.10.1.tar.xz
  ref: 7472e88090db2b228307505edeba4483e872681340cb0404ae64ac3da5bed0a6
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
