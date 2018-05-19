kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-code-assistance
  track: master
depends:
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
