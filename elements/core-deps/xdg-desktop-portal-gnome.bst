kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/45/xdg-desktop-portal-gnome-45.beta.tar.xz
  ref: 001a12f848266705076a20605503bd3ff824ce175e7e970e4c8a5d27822890d3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
