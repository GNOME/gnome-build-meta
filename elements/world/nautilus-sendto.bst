kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:nautilus-sendto
  track: master
depends:
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
