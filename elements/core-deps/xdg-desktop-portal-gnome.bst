kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/44/xdg-desktop-portal-gnome-44.1.tar.xz
  ref: 3682c546c81922a5ba69d62d86f69c0c26b17c9096823f58149d0b55bbf0eedb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
