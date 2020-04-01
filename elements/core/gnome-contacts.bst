kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.36/gnome-contacts-3.36.tar.xz
  ref: eecbd2209d93c8d31df92f6ccf79183b456c6e07a28ae0155cbda18aabd36f7b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
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
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
