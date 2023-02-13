kind: meson

sources:
- kind: git_tag
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 44.alpha-19-ga188f5bf5be66a372bfa641f4771eeaa14462e60

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
