kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-screenshot
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
