kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/44/gnome-characters-44.rc.tar.xz
  ref: 3adb574d10b68b7a04d79c1eac0612f859c6b725237df0ef3b7e2657180a49b7

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
