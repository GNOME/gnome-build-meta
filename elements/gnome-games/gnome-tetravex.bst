kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-tetravex.git
  track: master

  ref: 3.38.2-37-gfc0d4f8e09d20e00cfec285329f778ff45d75b0c
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
