kind: meson

sources:
- kind: git
  url: https://gitlab.gnome.org/GNOME/xdg-desktop-portal-gnome.git
  track: main

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/libadwaita.bst
- core-deps/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
