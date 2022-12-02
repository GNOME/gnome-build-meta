kind: autotools
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 43-68-g855de98ff268bf53ecfa1dccce1f18e368f26bb6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
