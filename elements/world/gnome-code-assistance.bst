kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-code-assistance.git
  track: master
depends:
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
