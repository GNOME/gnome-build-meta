kind: autotools

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.12.2-4-g914f42250b3e4f4596cbdccf18c9f4337c3d650e

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
