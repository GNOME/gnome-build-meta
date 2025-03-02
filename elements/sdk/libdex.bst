kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.9/libdex-0.9.1.tar.xz
  ref: d2b5ec6577fc3e6af03dda48b8c0be144e31baaa1cc9224acb956e41e174c15b
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
