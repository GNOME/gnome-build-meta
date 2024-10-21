kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.8/libdex-0.8.1.tar.xz
  ref: 955475ad3e43aabd6f6f70435264b5ee77bd265bd95545211fee026b08d378a0
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
