kind: autotools
sources:
- kind: git
  url: git_gnome_org:gedit
  track: master
  submodules:
    libgd:
      url: git_gnome_org:libgd
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- core-deps/yelp-tools.bst
- core/gsettings-desktop-schemas.bst
- base.bst
