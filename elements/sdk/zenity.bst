kind: autotools
sources:
- kind: tar
  url: gnome_downloads:zenity/3.32/zenity-3.32.0.tar.xz
  ref: e786e733569c97372c3ef1776e71be7e7599ebe87e11e8ad67dcc2e63a82cd95
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
