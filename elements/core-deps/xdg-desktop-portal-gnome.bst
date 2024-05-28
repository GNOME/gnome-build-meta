kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/46/xdg-desktop-portal-gnome-46.2.tar.xz
  ref: b5c65ea25e8483502d033a613be6dc6b71883ac07f1a3e474ad18049c47d16d6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
