kind: meson
sources:
- kind: tar
  url: gnome_downloads:tepl/4.99/tepl-4.99.4.tar.xz
  ref: 2b616c40f209912574cf773f1c77b0ba944f33dba97572ad79900abbbfe36c21
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst
depends:
- core-deps/amtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
