kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 47.alpha-20-g74af14d19e79d5eeeb67ffc695e0b898b39b68a5

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
