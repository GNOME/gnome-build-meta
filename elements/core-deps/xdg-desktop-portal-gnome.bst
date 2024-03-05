kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/46/xdg-desktop-portal-gnome-46.rc.tar.xz
  ref: 2c650795d61d51be887a41c29435e02be250f8bf820b4fe191aa247f212e54b8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
