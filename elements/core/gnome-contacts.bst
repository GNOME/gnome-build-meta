kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-contacts/3.29/gnome-contacts-3.29.92.tar.xz
  ref: c708af13a6771a9468c4c4c8d02ad3adf256e182b91688a40f656c43f4740d11
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
