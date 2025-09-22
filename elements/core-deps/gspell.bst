kind: meson

sources:
- kind: git_repo
  url: gnome:gspell.git
  track: master
  ref: 1.14.0-4-g61fc1ceecdb55b465b1def99824d89a77e26b699

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
