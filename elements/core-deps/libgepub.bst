kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgepub
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
