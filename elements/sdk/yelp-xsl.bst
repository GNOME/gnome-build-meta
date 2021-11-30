kind: autotools
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/yelp-xsl.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
