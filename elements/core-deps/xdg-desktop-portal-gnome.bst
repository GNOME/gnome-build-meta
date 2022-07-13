kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/43/xdg-desktop-portal-gnome-43.alpha.tar.xz
  ref: f07785beda1523913cb4ff6f8c33a4e3dbb8b96d2e59839545ec401b082e547c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
