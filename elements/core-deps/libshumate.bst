kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.5/libshumate-1.5.5.tar.xz
  ref: ce27d88537a37cd5c45959c3bb7cc18c1c18b3d2e663d02bcf46fc66f7414a92
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
