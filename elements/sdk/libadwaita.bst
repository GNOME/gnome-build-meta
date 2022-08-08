kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.1/libadwaita-1.1.4.tar.xz
  ref: fcc6d56669d33ac3d030098d7571d8045a02e18dc083b49a5a5a6325068e6b58
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
