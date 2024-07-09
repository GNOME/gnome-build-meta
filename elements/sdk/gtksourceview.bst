kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.12/gtksourceview-5.12.1.tar.xz
  ref: 84c82aad985c5aadae7cea7804904a76341ec82b268d46594c1a478f39b42c1f
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
