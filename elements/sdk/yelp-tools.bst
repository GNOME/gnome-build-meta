kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/40/yelp-tools-40.0.tar.xz
  ref: 664bacf2f3dd65ef00a43f79487351ab64a6c4c629c56ac0ceb1723c2eb66aae
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
