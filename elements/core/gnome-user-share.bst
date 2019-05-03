kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-user-share.git
  track: master
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
