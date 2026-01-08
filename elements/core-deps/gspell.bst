kind: meson

sources:
- kind: tar
  url: gnome_downloads:gspell/1.14/gspell-1.14.2.tar.xz
  ref: 4ec7e5accc9013281bacd6bbc00006be733818b81ba3fe332c1e876c7e1e1477
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
