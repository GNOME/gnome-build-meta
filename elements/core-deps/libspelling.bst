kind: meson

sources:
- kind: tar
  url: gnome_downloads:libspelling/0.4/libspelling-0.4.5.tar.xz
  ref: ec0372d83f42b65aee3734248ef8e2ffbfba4ea91268419c98ea44a00ef3e83f

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
