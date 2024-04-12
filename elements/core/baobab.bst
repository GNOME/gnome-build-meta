kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 46.0-1-g4fd814565820d6f3a2ae51d0ed38c5238f8a9e40

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
