kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.34/gnome-contacts-3.34.1.tar.xz
  ref: 0a83c7d8ea27291222ae053d6d5e5506744ebdcf4b6e70defb5deeebb32f1ccb
depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libhandy.bst
- core/cheese.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
