kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/46/baobab-46.0.tar.xz
  ref: ce4def5c82d05671a5009f7bebcf85ac98675d9d8160d28ad9181b269a72e37c
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
