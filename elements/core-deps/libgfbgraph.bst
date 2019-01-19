kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgfbgraph
  track: master
depends:
- core-deps/librest.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
