kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-characters.git
  track: main
  ref: 45.alpha-40-ga50acab82e1a7da8431f4f88358a0ecff0ffe549

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
