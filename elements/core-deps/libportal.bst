kind: meson

sources:
- kind: tar
  url: github_files:flatpak/libportal/releases/download/0.9.0/libportal-0.9.0.tar.xz
  ref: 113910f06f39387328805397053d20c7acafb7388d8e6cd5e06e05efb9690735

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbackend-qt5=disabled
    -Dbackend-qt6=disabled
