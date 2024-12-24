kind: meson
sources:
- kind: git_repo
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 47.0-15-gc7f7251d3cf16262c1677f4a70b890896f83db45
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
