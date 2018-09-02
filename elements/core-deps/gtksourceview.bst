kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtksourceview
  track: master
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
