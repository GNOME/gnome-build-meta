kind: meson
sources:
- kind: git
  url: git_gnome_org:dconf-editor
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
