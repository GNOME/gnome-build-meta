kind: autotools
sources:
- kind: git
  url: git_gnome_org:gspell
  track: master
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- base.bst
