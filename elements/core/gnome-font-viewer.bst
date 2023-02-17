kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 44.beta-7-g3612ce9419aaa3ab84822cd188400d22e1c02c72

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
