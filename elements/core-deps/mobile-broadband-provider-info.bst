kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/mobile-broadband-provider-info.git
  track: master
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
