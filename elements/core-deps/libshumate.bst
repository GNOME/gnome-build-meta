kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.4/libshumate-1.4.0.tar.xz
  ref: 3984368e0259862b3810d1ddc86d2dadd6d372a2b32376ccf4aff7c2e48c6d30
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
