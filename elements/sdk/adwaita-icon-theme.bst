kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/adwaita-icon-theme.git
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
