kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-contacts/3.30/gnome-contacts-3.30.1.tar.xz
  ref: 095500f62992890bd47329635981e36219db1ebd52f27d7bb3f7503a96bc3fee
depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core/cheese.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dtelepathy=false
