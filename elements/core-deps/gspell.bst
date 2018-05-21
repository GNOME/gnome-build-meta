kind: autotools
sources:
- kind: git
  url: git_gnome_org:gspell
  track: master
depends:
- core-deps/enchant-2.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
