kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/51/gnome-characters-51.0.tar.xz
  ref: 8b90e9d7fcff43622ed34677f0029cd74b440185f1639af48c439f63bebadc31
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
