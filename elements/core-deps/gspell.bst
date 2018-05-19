kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gspell
  track: master
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
