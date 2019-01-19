kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/recipes.git
  track: master
depends:
- core-deps/gnome-autoar.bst
- core-deps/gspell.bst
- sdk/gnome-online-accounts.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
