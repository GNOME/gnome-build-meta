kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 47.alpha-38-g8ad86d5ee0bd41c66c2a45c2eead7af12f6e7117

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
