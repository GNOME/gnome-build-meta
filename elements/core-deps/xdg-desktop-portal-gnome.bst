kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/43/xdg-desktop-portal-gnome-43.rc.tar.xz
  ref: f9bfb79850e031702f300dcad235730605185f7faf21e504d69519b75b4ce954
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
