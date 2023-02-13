kind: meson
sources:
- kind: git_tag
  url: gnome:baobab.git
  track: main
  ref: 44.beta-8-g8b6aeeeb27a4062be3f45a8ca2c9548beb642f2e
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
