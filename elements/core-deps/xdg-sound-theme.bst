kind: autotools
sources:
- kind: git_tag
  url: git_freedesktop_org:xdg/xdg-sound-theme.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/glib.bst
- core-deps/intltool.bst
