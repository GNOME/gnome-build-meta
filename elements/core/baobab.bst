kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/48/baobab-48.0.tar.xz
  ref: 54592504d49d807f23591be7e7eef10c6c9dfcb7ac527b81c3acd58787b26fda
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
