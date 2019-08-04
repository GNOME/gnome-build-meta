kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/four-in-a-row.git
  track: master
depends:
- core-deps/gsound.bst
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: sdk/vala.bst
  type: build
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
