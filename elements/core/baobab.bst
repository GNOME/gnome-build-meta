kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/44/baobab-44.rc.tar.xz
  ref: 39641c3274acca1fa1b4586c22649629014077c9f527a89bf56f2cde71d95043

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
