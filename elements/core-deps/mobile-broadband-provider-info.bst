kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/mobile-broadband-provider-info.git
  track: master
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
