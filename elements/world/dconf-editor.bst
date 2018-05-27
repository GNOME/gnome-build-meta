kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/dconf-editor
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
