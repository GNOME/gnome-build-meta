kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 50.0-1-gf5dca69dcb87aff65c35f046654cc1c8885c9a0c

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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
