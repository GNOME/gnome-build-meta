kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-contacts/3.29/gnome-contacts-3.29.2.tar.xz
  ref: 9320208c5266aca2a2ca5e3cb2a65e21ca46ac6a7911b836d51789888155a9f7
depends:
- core-deps/folks.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/vala.bst
- core/adwaita-icon-theme.bst
- core/cheese.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dtelepathy=false
