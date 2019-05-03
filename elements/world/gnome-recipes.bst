kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/recipes.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgd.git
depends:
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- sdk/gtk+-3.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
