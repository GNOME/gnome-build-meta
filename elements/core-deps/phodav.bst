kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/phodav
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
