kind: meson

sources:
- kind: git_repo
  url: gnome:zenity.git
  track: master
  ref: 4.1.99-0-gbb585782da4a6c991e5782be451826bae92d0757

build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
