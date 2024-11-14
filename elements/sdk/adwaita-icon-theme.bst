kind: meson
sources:
- kind: git_repo
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 47.0-10-gd1ff51f0730e2f27f93d98782d2eb2b5af3a2fd8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
