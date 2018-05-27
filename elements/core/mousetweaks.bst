kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:mousetweaks
  track: master
depends:
- core-deps/gtk+-3.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
