kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgepub.git
  track: master
depends:
- sdk/WebKitGTK.bst
- sdk/glib.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
