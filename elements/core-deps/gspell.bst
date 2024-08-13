kind: meson

sources:
- kind: tar
  url: gnome_downloads:gspell/1.13/gspell-1.13.1.tar.xz
  ref: cced45e9892ba35c31b9a11d62a9e1542e5dfd68f7fb37c335ba7449f20cd615
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
