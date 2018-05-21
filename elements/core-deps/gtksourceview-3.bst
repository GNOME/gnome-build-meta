kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtksourceview
  track: gnome-3-24
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
