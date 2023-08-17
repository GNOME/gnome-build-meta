kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 45.alpha-7-g94e670277b9271321a6b876af99015444535d588

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
