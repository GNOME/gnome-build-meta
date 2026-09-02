kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-app-list/2026/gnome-app-list-2026.08.tar.xz
  ref: 4142563951a5897cdc42db080d50edea2e7decf2d85da1d1e7fba2b02ec9f455
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
