kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-characters.git
  track: main
  ref: 44.beta-13-g9d67dddd0aae065dd293f1bc0b68bad8e0219aa5
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
