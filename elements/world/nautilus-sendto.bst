kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/nautilus-sendto
  track: master
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
