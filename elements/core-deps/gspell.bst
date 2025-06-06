kind: meson

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.14.0-3-gd018c7a646478b9572bcd5c600eada03abda0ea9

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
