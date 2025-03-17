kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.16/gtksourceview-5.16.0.tar.xz
  ref: ab35d420102f3e8b055dd3b8642d3a48209f888189e6254d0ffb4b6a7e8c3566
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
