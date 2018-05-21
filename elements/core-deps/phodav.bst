kind: autotools
sources:
- kind: git
  url: git_gnome_org:phodav
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
