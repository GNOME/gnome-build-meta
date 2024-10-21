kind: meson

sources:
- kind: tar
  url: gnome_downloads:libspelling/0.4/libspelling-0.4.4.tar.xz
  ref: ac9132c634bb9df911e35b52345aa12126f7ec95e5f07179a980861819787150

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
