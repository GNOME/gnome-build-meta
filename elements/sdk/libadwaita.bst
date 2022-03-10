kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.1/libadwaita-1.1.rc.tar.xz
  ref: 313f2999d54bfb602cda0a03d71f261e3794c683b5b11525a91d2066b3c2ef8f
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
