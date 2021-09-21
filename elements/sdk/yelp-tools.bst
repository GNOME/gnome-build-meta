kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/41/yelp-tools-41.0.tar.xz
  ref: 37f1acc02bcbe68a31b86e07c129a839bd3276e656dc89eb7fc0a92746eff272
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
