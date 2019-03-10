kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/babl.git
  track: master
depends:
- filename: base/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
