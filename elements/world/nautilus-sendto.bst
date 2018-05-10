kind: meson
sources:
- kind: git
  url: git_gnome_org:nautilus-sendto
  track: master
depends:
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
