kind: meson

sources:
- kind: git_repo
  url: github:flatpak/libportal.git
  track: "*.*.*"
  ref: 0.10.0-0-gc23024018c8eb076549a1517fcb2d7f80d3e2ed5

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbackend-qt5=disabled
    -Dbackend-qt6=disabled
