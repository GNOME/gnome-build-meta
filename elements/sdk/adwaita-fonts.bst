kind: meson

sources:
- kind: git_repo
  url: gnome:adwaita-fonts.git
  track: main
  ref: 50.0-0-gbd828c71418f7ae3af76687d6ca2a809111770f2
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

