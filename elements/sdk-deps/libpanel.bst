kind: meson

sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.4-17-ge4e2a7fabb8f5e39bb7de2d3a409cb9d8f598d67

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
