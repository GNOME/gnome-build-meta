kind: meson
sources:
- kind: git_tag
  url: gnome:json-glib.git
  track: master
  ref: 1.6.6-54-g491eb8ef0bcc803c165a55f2e32e5467ba66cab8
build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=enabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
