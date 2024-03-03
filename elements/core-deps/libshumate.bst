kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.2/libshumate-1.2.rc.tar.xz
  ref: 3db7fb6150b687103ba1e75b5e49777e6e80099cb7f8cbb686d62c468c36088a
build-depends:
- sdk-deps/gi-docgen.bst
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
