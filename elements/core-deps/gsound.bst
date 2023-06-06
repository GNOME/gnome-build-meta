kind: meson
sources:
- kind: git_repo
  url: gnome:gsound.git
  track: master
  ref: 1.0.3-0-g95d36d60cf53e0e7c5d5325e0f1f4fc765a611ae
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
