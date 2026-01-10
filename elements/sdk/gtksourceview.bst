kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.18/gtksourceview-5.18.0.tar.xz
  ref: 051a78fe38f793328047e5bcd6d855c6425c0b480c20d9432179e356742c6ac0
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
