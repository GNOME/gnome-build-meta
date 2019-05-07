kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-user-docs.git
  track: master
depends:
- sdk/yelp-tools.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
