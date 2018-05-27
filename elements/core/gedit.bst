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
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
