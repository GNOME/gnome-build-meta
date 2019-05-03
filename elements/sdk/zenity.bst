kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/zenity.git
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
