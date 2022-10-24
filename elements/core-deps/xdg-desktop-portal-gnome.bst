kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/43/xdg-desktop-portal-gnome-43.1.tar.xz
  ref: 09adb66c6d9153e6f05df66daa2ad62a5de0e36665e9d2295173bb0ddc53b4cd
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
