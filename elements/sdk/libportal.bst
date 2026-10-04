kind: meson

sources:
- kind: git_repo
  url: github:flatpak/libportal.git
  track: "*.*.*"
  ref: 0.11.0-0-gfc4d62cfe131e8494c82f597f92b2234d584c367

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
