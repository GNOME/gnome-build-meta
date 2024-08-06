kind: meson

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.13.1-0-gc25c718236329d5e5992707f743f5e52bf078ab1

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
