kind: meson
sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: main
  ref: 1.8.0-actual-102-g229ae38d998ad37ff857ed12b6f14bad56a7cbca
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
