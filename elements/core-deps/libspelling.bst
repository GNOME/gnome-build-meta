kind: meson

sources:
- kind: git_repo
  url: gnome:libspelling.git
  track: main
  ref: 0.4.6-3-ga2b308ec0147a7800b7a7c9310f0e32edc627b8a

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
