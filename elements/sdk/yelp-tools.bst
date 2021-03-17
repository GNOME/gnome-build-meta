kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/40/yelp-tools-40.rc.tar.xz
  ref: 04da77afadb7f7f8568ce64a6eb27f938f57c1b02c61120c2dd6cba7277bed33
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
