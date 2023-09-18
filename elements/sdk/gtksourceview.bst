kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.10/gtksourceview-5.10.0.tar.xz
  ref: b38a3010c34f59e13b05175e9d20ca02a3110443fec2b1e5747413801bc9c23f
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
    -Dsysprof=true
