kind: meson

sources:
- kind: git_tag
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 43.0-8-g01d82c1fac8c8322902795faebbad05883df31a3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
