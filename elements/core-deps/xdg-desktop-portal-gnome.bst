kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 45.0-107-g94a704e940aa6b82a2a2df6b7b428686fe90e443

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
