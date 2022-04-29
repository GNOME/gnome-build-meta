kind: meson
sources:
- kind: tar
  url: gnome_downloads:zenity/3.42/zenity-3.42.1.tar.xz
  ref: a08e0c8e626615ee2c23ff74628eba6f8b486875dd54371ca7e2d7605b72a87c
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
