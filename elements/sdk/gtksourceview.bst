kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.14/gtksourceview-5.14.2.tar.xz
  ref: 1a6d387a68075f8aefd4e752cf487177c4a6823b14ff8a434986858aeaef6264
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
