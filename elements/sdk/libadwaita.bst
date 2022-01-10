kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.0/libadwaita-1.0.1.tar.xz
  ref: bb49cf5a09d2e8bc144946c2c3272aecd611667fd027f3808b95d7101ed473d6
build-depends:
- sdk-deps/gi-docgen.bst
- sdk-deps/sassc.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dprofiling=true
    -Dgtk_doc=true
