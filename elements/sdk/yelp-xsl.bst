kind: autotools
sources:
- kind: git_tag
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-6-gbfebc4070eaeea6cc894e23aa97276ae83d83d35
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
