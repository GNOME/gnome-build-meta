kind: autotools
sources:
- kind: git
  url: git_gnome_org:mousetweaks
  track: master
depends:
- core-deps/gtk+-3.bst
- core/gsettings-desktop-schemas.bst
- base.bst
