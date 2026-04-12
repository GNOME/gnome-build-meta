kind: meson

sources:
- kind: git_repo
  url: gnome:zenity.git
  track: master
  ref: 4.2.0-33-gc23643481580c4ccc9bccb53de118c74e6e41e1e

build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
