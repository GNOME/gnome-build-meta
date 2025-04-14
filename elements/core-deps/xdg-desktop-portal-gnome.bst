kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/47/xdg-desktop-portal-gnome-47.3.tar.xz
  ref: 9f6e4b14b583367c915e9494764f27cb84927faa3f9e6e018b93bbbcf3361e44
build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
