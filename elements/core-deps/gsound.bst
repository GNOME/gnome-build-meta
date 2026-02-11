kind: meson
sources:
- kind: git_repo
  url: gnome:gsound.git
  track: master
  ref: 1.0.3-7-g7860b15645570d94d2fee29af8c7e827d37e5703
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
