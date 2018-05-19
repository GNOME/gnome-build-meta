kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gedit
  track: master
  submodules:
    libgd:
      url: gitlab_gnome_org:GNOME/libgd
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
