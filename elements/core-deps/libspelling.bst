kind: meson

sources:
- kind: git_repo
  url: gnome:libspelling.git
  track: main
  ref: 0.4.10-33-g4d5ab19ad428f9dd0313a1a675aa2030647c5c77

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst

depends:
- sdk/enchant-2.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
