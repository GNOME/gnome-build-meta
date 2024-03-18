kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/46/xdg-desktop-portal-gnome-46.0.tar.xz
  ref: 5d2d533597d280b7370b8f74faa40097b292b0036dbd59166e1312230500bb8b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
