kind: meson
sources:
- kind: git_repo
  url: gnome:yelp-tools.git
  track: master
  ref: 42.1-5-g5fa6444af95ea5d46fafcf6097734142c9f9daca
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
