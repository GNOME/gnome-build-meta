kind: meson

sources:
- kind: tar
  url: gnome_downloads:libspelling/0.4/libspelling-0.4.0.tar.xz
  ref: 00c63970d708a0ef3bcba40e708a06d7030114cb9f210c74583ffad56d36e3dd

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
