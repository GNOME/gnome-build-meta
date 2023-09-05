kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.9/gtksourceview-5.9.0.tar.xz
  ref: 55cf74d37b5bcc1d3109cde5fc758b64b7dd2e8309a19ac8e97f3cbbbb184d56
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
