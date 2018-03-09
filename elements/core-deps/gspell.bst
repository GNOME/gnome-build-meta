kind: autotools
sources:
- kind: git
  url: git_gnome_org:gspell
  track: master
depends:
- core-deps/enchant-2.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- base.bst
