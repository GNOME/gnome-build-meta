kind: meson

sources:
- kind: git_tag
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 44.0-7-g3a9e46809912126a17bcd9403366683ccff176d2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
