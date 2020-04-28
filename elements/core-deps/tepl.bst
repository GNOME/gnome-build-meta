kind: meson
sources:
- kind: tar
  url: gnome_downloads:tepl/4.99/tepl-4.99.1.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst
depends:
- core-deps/amtk.bst
- core-deps/uchardet.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:bootstrap-import.bst
