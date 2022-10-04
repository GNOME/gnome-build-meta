kind: meson
sources:
- kind: git_tag
  url: gnome:yelp-tools.git
  track: master
  ref: 42.0-2-g73b668ead2b7e915568fd4517dc25cf2dcd9fe43
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
