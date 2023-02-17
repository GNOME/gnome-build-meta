kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.8/libhandy-1.8.1.tar.xz
  ref: 3766b9a881fe0658cc6080453a2219086c3f6dbd82069de409b8ab3f59948a70
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=disabled
