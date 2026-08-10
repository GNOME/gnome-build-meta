kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.21/gtksourceview-5.21.0.tar.xz
  ref: 65f7ce9d2ec683c6ff9b27a50d909f3abef65f742d11011e1b8f8b848cadf0f7
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
