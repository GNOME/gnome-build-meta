kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gspell
  track: master
depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
