kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgepub
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
