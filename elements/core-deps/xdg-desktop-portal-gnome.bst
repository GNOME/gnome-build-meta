kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/45/xdg-desktop-portal-gnome-45.1.tar.xz
  ref: 3e9ca821044005fb37bd68ebe4ad196fc3d072835581467a22a4879dac7b5fdd
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
