kind: autotools
sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-15-ge8515546a89da6da249b93cece8fbc947e230556
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
