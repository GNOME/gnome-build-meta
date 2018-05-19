kind: autotools
sources:
- kind: git
  url: git_gnome_org:librest
  track: librest-0-7
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
