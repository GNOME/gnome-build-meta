kind: meson
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 45.beta-8-g7d706efa7e322a6f07ec63b6f7594ab817e7369e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
