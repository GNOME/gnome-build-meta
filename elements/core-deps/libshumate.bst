kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.6/libshumate-1.6.2.tar.xz
  ref: 22364bb98f8b520334336ab82240196a0963489b86a5b38328e1bea2b64f3a9e
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/protobuf-c.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
