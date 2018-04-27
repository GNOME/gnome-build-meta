kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-shell-extensions.git
  track: master
depends:
- sdk/librsvg.bst
- core/gnome-menus.bst
- core/gnome-shell.bst
- base.bst
variables:
  meson-local: -Dextension_set=classic
