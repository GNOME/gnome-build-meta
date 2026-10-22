kind: meson

sources:
- kind: git_repo
  url: gnome:adwaita-fonts.git
  track: main
  ref: 51.0-2-g301f8351840087c0bcd5f3f97aae37b3734b8648
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

