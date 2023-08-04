kind: meson
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 45.beta-10-g487e2d02b8ae805f22a25905aa62fb04a4ce4cac
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
