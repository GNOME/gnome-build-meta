kind: meson
sources:
- kind: git
  url: git_gnome_org:clutter-gtk
  track: master
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- base.bst
