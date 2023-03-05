kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.1/libdex-0.1.1.tar.xz
  ref: 393206cfd6ed0ac69e578e699342230e4645c532966024617d193086e90cce5d
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/liburing.bst
- sdk/glib.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
