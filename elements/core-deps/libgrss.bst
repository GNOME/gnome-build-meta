kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgrss
  track: master
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
