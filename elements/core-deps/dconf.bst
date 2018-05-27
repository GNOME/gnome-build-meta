kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:dconf
  track: master
depends:
- core-deps/glib.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
