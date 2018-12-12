kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-contacts/3.30/gnome-contacts-3.30.2.tar.xz
  ref: 7090397de833426579026a5e14e92f8a0f2e7436c7b5ff05da0cfbf4799b17ac
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
