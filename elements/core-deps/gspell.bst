kind: autotools

sources:
- kind: git_tag
  url: gnome:gspell.git
  track: master
  ref: 1.12.0-3-gf7fe09ad1d73bb10cbe4032a8cd8767d27e964a1

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
