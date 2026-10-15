kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.22/gtksourceview-5.22.0.tar.xz
  ref: 3ebce33c781e65590a450ecd3ffade480d8e3135b52ee996f1620d6c7dffbbff
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
