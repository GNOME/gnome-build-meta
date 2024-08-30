kind: meson

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.13.2-0-gb248072874cca4bcd63ac8a4a5472b95094ae2fb

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
