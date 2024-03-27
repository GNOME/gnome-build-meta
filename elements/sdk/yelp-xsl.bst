kind: autotools
sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-17-g6650499ca2926182999b62b41846188f202560d7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
