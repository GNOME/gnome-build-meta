kind: meson

sources:
- kind: tar
  url: gnome_downloads:gspell/1.14/gspell-1.14.3.tar.xz
  ref: e8b39c67556f75495362952f81ca241b5a3c17c75960b77fc93fa702c612a5a4
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
