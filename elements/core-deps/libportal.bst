kind: meson

sources:
- kind: tar
  url: github_files:flatpak/libportal/releases/download/0.5/libportal-0.5.tar.xz

  ref: d8c8cb18a34e5eeb26a39c94044c955995b01de0e139caac5e18c076cf821b3b
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
