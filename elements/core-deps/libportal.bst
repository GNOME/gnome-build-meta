kind: meson

sources:
- kind: tar
  url: 
    github_files:flatpak/libportal/releases/download/0.9.1/libportal-0.9.1.tar.xz
  ref: de801ee349ed3c255a9af3c01b1a401fab5b3fc1c35eb2fd7dfb35d4b8194d7f

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
