kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.8/libhandy-1.8.0.tar.xz
  ref: 6c2542c0578924b0c29b7ae6cb44eb26df38eb01d6d5ef3d7d0b0825763230e8
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
