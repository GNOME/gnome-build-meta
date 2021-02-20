kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/40/yelp-tools-40.beta.tar.xz
  ref: 35709074dd871df19be04b3053f9c78f0341f35237a2fa41a35c87408a6825e6
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
