kind: meson
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 45.rc-0-g2d070aa84d2f74cee8b693d9a4580453460b631b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
