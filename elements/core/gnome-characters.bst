kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-characters.git
  track: main
  ref: 44.0-2-g09e2af170fa46f29b57baab3a162233f646eff5f

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
