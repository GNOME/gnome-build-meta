kind: meson
sources:
- kind: git
  url: git_gnome_org:swell-foop
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
