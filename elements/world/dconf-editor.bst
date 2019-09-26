kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/dconf-editor.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
