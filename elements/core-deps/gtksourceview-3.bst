kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gtksourceview
  track: gnome-3-24
depends:
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
