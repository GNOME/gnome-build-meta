kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtksourceview
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
