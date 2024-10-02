kind: meson

sources:
- kind: tar
  url: github_files:flatpak/libportal/releases/download/0.8.1/libportal-0.8.1.tar.xz
  ref: 281e54e4f8561125a65d20658f1462ab932b2b1258c376fed2137718441825ac

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbackend-qt5=disabled
    -Dbackend-qt6=disabled
