kind: meson

sources:
- kind: git_repo
  url: gnome:libspelling.git
  track: main
  ref: 0.4.10-32-g14dd5c35df95872d3c3cc3418f2bcfb8ca537a5c

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
