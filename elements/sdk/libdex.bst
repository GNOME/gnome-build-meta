kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.1/libdex-1.1.rc.tar.xz
  ref: e3d62972ebc0f3ea601217b41df4612333edf945e276219243353c0477795905
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
