kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.2/libadwaita-1.2.alpha.tar.xz
  ref: 4d01933213b877aba0376164444e0bcd52799d3e57010dacb52796d038d60929
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
