kind: autotools

sources:
- kind: git_tag
  url: gnome:gspell.git
  track: master
  ref: 1.12.1-1-g898420e287b8b7874bc17bd728309411e0757e5a

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
