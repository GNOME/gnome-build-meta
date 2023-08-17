kind: meson

sources:
- kind: git_tag
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 45.beta-18-gc608a1b9593c884737570d35f1def260a40e4c98

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
