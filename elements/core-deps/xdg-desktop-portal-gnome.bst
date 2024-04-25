kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/46/xdg-desktop-portal-gnome-46.1.tar.xz
  ref: 7e8d9623e9d96a89c0897616827cd441dcf2832927d38f135c722552b1172aa1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
