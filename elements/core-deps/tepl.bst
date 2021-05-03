kind: meson
sources:
- kind: tar
  url: gnome_downloads:tepl/6.00/tepl-6.00.0.tar.xz
  ref: a86397a895dca9c0de7a5ccb063bda8f7ef691cccb950ce2cfdee367903e7a63
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
