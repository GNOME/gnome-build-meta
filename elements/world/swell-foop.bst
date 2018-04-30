kind: meson
sources:
- kind: git
  url: git_gnome_org:swell-foop
  track: master
depends:
- sdk/clutter.bst
- sdk/clutter-gtk.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- base.bst
