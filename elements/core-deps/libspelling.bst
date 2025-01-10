kind: meson

sources:
- kind: git_repo
  url: gnome:libspelling.git
  track: main
  ref: 0.4.5-3-g8ba7c1cd4146aeee07fb3ee5a58de18d4c9e5eda

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/enchant-2.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
