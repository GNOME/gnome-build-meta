kind: meson
sources:
- kind: git_repo
  url: gnome:yelp-tools.git
  track: master
  ref: 42.1-0-gfe5ff72ca46fba425143e5dc67d660703c86145f
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
