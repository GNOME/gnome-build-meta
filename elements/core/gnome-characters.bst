kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-characters.git
  track: main
  ref: 45.alpha-46-gc85a0ca8b8cec2adddef4b2b31f912d46947534e

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
