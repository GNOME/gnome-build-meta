kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/50/gnome-characters-50.0.tar.xz
  ref: 4070734dd639b3094be467bb055a5461b2fc301cdfc9feddcb4a68f476ed5aad
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
