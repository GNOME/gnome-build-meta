kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:sp1rit/ministream.git
  track: "*.*.*"
  ref: 0.99.1-0-gbaf2b7dcd585002973455a9aeb640fc4180e3747

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst

variables:
  meson-local: >-
    -Das-compare=disabled
