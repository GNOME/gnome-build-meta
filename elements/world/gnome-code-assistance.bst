kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-code-assistance
  track: master
depends:
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
