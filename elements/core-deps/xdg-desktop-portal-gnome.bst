kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/41/xdg-desktop-portal-gnome-41.alpha.tar.xz
  ref: 40eb9b8eff846ddcbf077120c25849c4c8535437e5f18205e1fe1a25e4d1136f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/gsettings-desktop-schemas.bst
- core-deps/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
