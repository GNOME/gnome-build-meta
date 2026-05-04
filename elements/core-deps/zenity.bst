kind: meson

sources:
- kind: git_repo
  url: gnome:zenity.git
  track: master
  ref: 4.2.0-35-ge0ec570570bb90a0f626aa328da75644cd9ebe6e

build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
