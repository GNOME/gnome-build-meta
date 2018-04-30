kind: meson
sources:
- kind: git
  url: git_gnome_org:lightsoff
  track: master
depends:
- sdk/clutter.bst
- sdk/clutter-gtk.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- base.bst
