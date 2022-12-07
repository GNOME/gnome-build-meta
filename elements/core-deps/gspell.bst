kind: autotools

sources:
- kind: git_tag
  url: gnome:gspell.git
  track: master
  ref: 1.12.0-4-g1a12fda554e3f09f4f62d866567385f4e2d4349a

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
