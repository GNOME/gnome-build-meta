kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 46.0-32-gd431d434726440be96f20d2a43efcc135d4d1cb6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
