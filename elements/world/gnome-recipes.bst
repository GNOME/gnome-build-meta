kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/recipes.git
  track: master
depends:
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- base.bst
