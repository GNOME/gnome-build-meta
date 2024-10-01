kind: meson

sources:
- kind: git_repo
  url: gnome:libspelling.git
  track: main
  ref: 0.4.1-2-g4a1db5ac30b22430c48b1927f49169f3f5732284

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
