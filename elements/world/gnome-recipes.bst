kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/recipes.git
  track: master
depends:
- core-deps/gnome-autoar.bst
- sdk/gnome-online-accounts.bst
- core-deps/gspell.bst
- sdk/gtk+-3.bst
- base.bst
