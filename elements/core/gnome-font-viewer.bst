kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 44.rc-1-g9e08f284a024abb483440cacf77ea57ec6db0815

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
