kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/44/gnome-characters-44.beta.tar.xz
  ref: 7149626c82d7370fa77d4947acd94073382e4e7ea553a2482578191898a6141f

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
