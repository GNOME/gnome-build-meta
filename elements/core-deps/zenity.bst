kind: meson

sources:
- kind: git_repo
  url: gnome:zenity.git
  track: master
  ref: 4.2.0-5-g7ec72af6ac74da26413d2f3cefac7cd0e58d9ee2

build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
