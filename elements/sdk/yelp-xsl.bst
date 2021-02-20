kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/40/yelp-xsl-40.beta.tar.xz
  ref: 9fb303e544df46cf6011b9f789a83444c9af4294676a51876739e0f8a007c2bc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
