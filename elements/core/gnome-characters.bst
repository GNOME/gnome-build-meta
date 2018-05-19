kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-characters
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
