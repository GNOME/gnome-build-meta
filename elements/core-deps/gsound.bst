kind: meson
sources:
- kind: git_repo
  url: gnome:gsound.git
  track: master
  ref: 1.0.3-1-g5f6a56f89b7dd13e3f56f123c672e609c5fd8728
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
