kind: meson
sources:
- kind: git
  url: git_gnome_org:dconf
  track: master
depends:
- sdk/glib.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
