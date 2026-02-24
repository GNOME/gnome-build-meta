kind: meson

sources:
- kind: git_repo
  url: github:flatpak/libportal.git
  track: "*.*.*"
  ref: 0.9.1-0-g8f5dc8d192f6e31dafe69e35219e3b707bde71ce

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
