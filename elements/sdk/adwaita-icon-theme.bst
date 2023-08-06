kind: meson
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 45.beta-14-gedde78b1c9d75ccccafb7f2ae30a04158b59bf4c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
