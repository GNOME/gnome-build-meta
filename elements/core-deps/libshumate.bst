kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.0/libshumate-1.0.2.tar.xz
  ref: fe336b9a26b58e2972e1863f703ad88343143920ffca2d58f134ce341aed988d
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dlibsoup3=true
