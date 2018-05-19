kind: autotools
sources:
- kind: git
  url: git_gnome_org:gtksourceview
  track: gnome-3-24
depends:
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
