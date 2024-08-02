kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: master
  ref: 5.13.0-21-gac8ed2bced12dac66a4174f7d480c09231722712

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
