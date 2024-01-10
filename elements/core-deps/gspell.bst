kind: autotools

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.12.2-3-g723738dcec18643b3f7c8fefd288c0c6594258d5

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
