kind: autotools
sources:
- kind: tar
  url: gnome_downloads:zenity/3.32/zenity-3.32.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
