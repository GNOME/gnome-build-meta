kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.11/gtksourceview-5.11.1.tar.xz
  ref: 602738c8a5d64d5c52ba7c7861b759870bd9012f160f3030eab2212c6177a4e9
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
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
