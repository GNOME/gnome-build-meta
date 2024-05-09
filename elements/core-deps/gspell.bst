kind: autotools

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.12.2-9-g87b8146864a130bc1c85c57baa211df160ae564c

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
