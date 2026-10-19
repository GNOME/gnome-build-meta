kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: master
  ref: 5.22.0-9-g94cf5ccc63eb0fc0be70bfa78c8cb4619c4ad955

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
