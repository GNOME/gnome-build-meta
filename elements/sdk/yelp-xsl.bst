kind: autotools
sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-9-g3e5fd8bde4876667ad443123884a6507d6a5ae39
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
