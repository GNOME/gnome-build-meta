kind: autotools
sources:
- kind: tar
  url: gnome_downloads:zenity/3.32/zenity-3.32.0.tar.xz
depends:
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
