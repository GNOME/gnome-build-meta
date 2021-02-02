kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/yelp-tools.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
