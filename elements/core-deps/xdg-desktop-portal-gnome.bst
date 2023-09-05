kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/45/xdg-desktop-portal-gnome-45.rc.tar.xz
  ref: 5490554bae83076088bacf4da735542cc05a14c063cf1c3b4b77c96626d8e1c2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
