kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/iagno.git
  track: master
depends:
- core-deps/gsound.bst
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
