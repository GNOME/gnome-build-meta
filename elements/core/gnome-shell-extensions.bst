kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-shell-extensions.git
  track: master
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
