kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/51/gnome-characters-51.rc.tar.xz
  ref: e95da72ec9ba6579ab101309cb9b8ee6350940b64910939f4148dc1a60e9018c
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
