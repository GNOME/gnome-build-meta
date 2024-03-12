kind: meson

sources:
- kind: tar
  url: github_files:flatpak/libportal/releases/download/0.7.1/libportal-0.7.1.tar.xz
  ref: 297b90b263fad22190a26b8c7e8ea938fe6b18fb936265e588927179920d3805

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
    -Dbackend-qt5=disabled
