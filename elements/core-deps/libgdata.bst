kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgdata
  track: master
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
