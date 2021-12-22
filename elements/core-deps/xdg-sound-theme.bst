kind: autotools

sources:
- kind: tar
  url: git_freedesktop_org:xdg/xdg-sound-theme/-/archive/0.8/xdg-sound-theme-0.8.tar.bz2

build-depends:
- core-deps/intltool.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
