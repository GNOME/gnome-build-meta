kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/47/xdg-desktop-portal-gnome-47.2.tar.xz
  ref: 4b5368aa19dc0aa62c8a84e481c8a26490b4d77c7900b8e5c9d432ce91f1274c
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
