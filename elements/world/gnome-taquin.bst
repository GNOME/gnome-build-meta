kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-taquin.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
