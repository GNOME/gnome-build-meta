kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.14/gtksourceview-5.14.0.tar.xz
  ref: c40d1f7309d111f5805fec47c1fead519c4b8d506317ce5e90013ce47d65e9c6
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
