kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgepub.git
  track: master
depends:
- sdk/WebKitGTK.bst
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
