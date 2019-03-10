kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/nautilus-sendto.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
