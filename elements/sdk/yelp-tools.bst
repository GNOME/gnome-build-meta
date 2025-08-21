kind: meson
sources:
- kind: git_repo
  url: gnome:yelp-tools.git
  track: master
  ref: 42.1-3-g10168fe39cca26dc0f0fc22b08fe2958e6414e4d
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
