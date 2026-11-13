kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: master
  ref: 5.22.0-71-g898550267ace56f5d1c8daf0cbc851f2e3483460

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
