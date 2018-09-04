kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-contacts/3.30/gnome-contacts-3.30.tar.xz
  ref: acad6b4d7cf3cbb01a285d6bfbe1e2d9eaa7d4992fa94884bf620668084eaa33
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
