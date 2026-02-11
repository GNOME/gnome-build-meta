kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: master
  ref: 5.18.0-23-ge6f72febea341c3c5e6a1f646f06cd305e53bbca

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
