kind: meson

sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.4-21-g2ccec37c18b7716034909d2e0712d2548c010cc3

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
