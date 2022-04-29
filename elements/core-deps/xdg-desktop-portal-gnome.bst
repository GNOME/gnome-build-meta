kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/42/xdg-desktop-portal-gnome-42.1.tar.xz
  ref: 7685b6695cd98be8238171020c1c9713c4647d2680006c98ce8e4df858312cd2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
