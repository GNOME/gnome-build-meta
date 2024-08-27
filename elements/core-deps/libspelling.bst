kind: meson

sources:
- kind: tar
  url: gnome_downloads:libspelling/0.3/libspelling-0.3.0.tar.xz
  ref: cf7bfc2d7632e176f6e93de416df2f3f7d908f270e1c17084b5e3d585cddd7ab

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
