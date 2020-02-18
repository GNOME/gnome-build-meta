kind: autotools
sources:
- kind: tar
  url: gnome_downloads:zenity/3.32/zenity-3.32.0.tar.xz
  ref: e786e733569c97372c3ef1776e71be7e7599ebe87e11e8ad67dcc2e63a82cd95
depends:
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
