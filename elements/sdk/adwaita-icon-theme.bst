kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/adwaita-icon-theme.git
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
