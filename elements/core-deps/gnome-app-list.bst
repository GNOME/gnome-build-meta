kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-app-list.git
  track: main
  ref: 2026.08-0-g57cbd086f017a71699ebfa72e9ce3ef5042bc1f0

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
