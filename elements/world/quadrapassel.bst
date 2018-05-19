kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/quadrapassel
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- world/libmanette.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
