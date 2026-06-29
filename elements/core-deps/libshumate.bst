kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.7/libshumate-1.7.alpha.tar.xz
  ref: db0f75a969bec76b4a736a0d45339ea5d243d60a0dfae07367df8a86e07c0369
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst

depends:
- core-deps/protobuf-c.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
