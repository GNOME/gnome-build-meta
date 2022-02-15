kind: meson
sources:
- kind: tar
  url: gnome_downloads:zenity/3.41/zenity-3.41.0.tar.xz
  ref: 19b676c3510e22badfcc3204062d432ba537402f5e0ae26128c0d90c954037e1
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
