kind: meson

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.13.1-19-gc3816be4918806c6f2cc39bc0d19bb1d178d214a

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
