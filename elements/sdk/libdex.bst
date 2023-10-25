kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.4/libdex-0.4.1.tar.xz
  ref: 81b5f5474d164b40395e82867fa706af18207c787f30989b76afb7e7df5b443a
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
