kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 44.rc-5-g447cdfc4da01891a867023f638ad4e6158b42201

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
