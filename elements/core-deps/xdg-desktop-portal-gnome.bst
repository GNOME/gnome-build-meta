kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/41/xdg-desktop-portal-gnome-41.2.tar.xz
  ref: f038eb1e8599c35ed396d112c2ea420ee76f78c1b5fc97b3e28405ab286f1709
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/gsettings-desktop-schemas.bst
- core-deps/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
