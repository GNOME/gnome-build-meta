kind: meson
sources:
- kind: tar
  url: gnome_downloads:tepl/5.1/tepl-5.1.1.tar.xz
  ref: 9a8099557db72f0e569ad66ee6470059b7244f65f233736fbd0dc85d5e81da42
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
