kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.10/json-glib-1.10.6.tar.xz
  ref: 77f4bcbf9339528f166b8073458693f0a20b77b7059dbc2db61746a1928b0293
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dgtk_doc=enabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
