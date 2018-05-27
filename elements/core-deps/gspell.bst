kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gspell
  track: master
depends:
- core-deps/enchant-2.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
