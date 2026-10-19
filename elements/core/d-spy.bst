kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 50.0-59-g1cc513d2a20c133f6374efe081bfd9176d0003e5

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
