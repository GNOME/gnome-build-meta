kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-tweaks.git
  track: master
depends:
- sdk/librsvg.bst
- sdk/pygobject.bst
- core/gnome-shell.bst
- core/nautilus.bst
- base.bst
