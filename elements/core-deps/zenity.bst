kind: meson

sources:
- kind: git_repo
  url: gnome:zenity.git
  track: master
  ref: 4.2.0-48-gd29b7cd14c476a8f93c2f86e53e4435aa92f6e0b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
