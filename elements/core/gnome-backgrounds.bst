kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/42/gnome-backgrounds-42.beta.tar.xz
  ref: 8db9da06dcf15e276ebdb89aad43f393d00a6a177c3188fe5d0b8b5e7ae15fa5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
