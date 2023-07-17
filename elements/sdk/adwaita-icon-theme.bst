kind: meson
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 45.beta-1-g5355a9a836c5c1bd53f40bcdefbab53441ac0fae
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
