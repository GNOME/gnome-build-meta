kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.1/libadwaita-1.1.7.tar.xz
  ref: f54481638e921b1e42a7edd16c4fadd5eb859f8ef1425285618821c844b38d92
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
