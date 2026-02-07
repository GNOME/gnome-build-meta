kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/49/yelp-xsl-49.0.tar.xz
  ref: 59d43a8f8fe67b784f14f9a04dd4a7a092a7f4a64a65e71b90fe02a47a50fbec
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
