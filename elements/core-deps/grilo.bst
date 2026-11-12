kind: meson

sources:
- kind: git_repo
  url: gnome:grilo.git
  track: master
  ref: grilo-0.3.19-12-g91a693b437568932d433d00f4eccd7549d25dc8e

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst

depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable-test-ui=false
