kind: autotools
sources:
- kind: git
  url: https://git.gnome.org/libzapojit
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
