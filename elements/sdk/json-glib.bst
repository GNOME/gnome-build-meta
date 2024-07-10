kind: meson
sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: main
  ref: 1.9.2-22-g9dd8fab5796de7189178f0cbca4b0410403bca59
build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
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
