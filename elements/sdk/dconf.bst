kind: meson
sources:
- kind: git
  url: git_gnome_org:dconf
  track: master
depends:
- sdk/glib.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
