kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.17/gtksourceview-5.17.0.tar.xz
  ref: dcf162b47cb51671ee66e6ae05f9d54165f2e5cadca0fed2ae94a3aa4704464c
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
