kind: meson
sources:
- kind: git
  url: git_gnome_org:nautilus-sendto
  track: master
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
