kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 47.alpha-5-gf3783757bb57de3e37b660c5d1764473ea1b065b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
