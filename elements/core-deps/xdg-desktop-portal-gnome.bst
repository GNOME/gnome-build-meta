kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/42/xdg-desktop-portal-gnome-42.rc.tar.xz
  ref: 352405a12280417b02db58f2e8cbaaef102d72639d7976401fcfcc134d64c3b5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
