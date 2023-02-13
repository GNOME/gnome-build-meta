kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-font-viewer.git
  track: main
  ref: 44.beta-5-gbb1c98ea49f459aae44ded9197213909a4664e6f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
