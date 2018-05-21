kind: autotools
sources:
- kind: git
  url: git_gnome_org:librest
  track: librest-0-7
depends:
- core-deps/glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
