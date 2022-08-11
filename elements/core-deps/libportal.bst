kind: meson

sources:
- kind: tar
  url: github_files:flatpak/libportal/releases/download/0.6/libportal-0.6.tar.xz

  ref: 88a12c3ba71bc31acff7238c280de697d609cebc50830c3766776ec35abc6566
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbackends=gtk3,gtk4
