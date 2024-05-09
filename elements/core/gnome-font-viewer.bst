kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 46.0-3-g30c05e33f4683fa64ed96c235f1a6818d3333806

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
