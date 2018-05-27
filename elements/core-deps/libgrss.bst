kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgrss
  track: master
depends:
- core-deps/glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
