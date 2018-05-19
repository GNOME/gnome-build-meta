kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/librest
  track: librest-0-7
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
