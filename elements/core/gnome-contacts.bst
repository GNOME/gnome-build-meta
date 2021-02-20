kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/40/gnome-contacts-40.alpha.tar.xz
  ref: 8c89b888b34ac9de64fb445078a57dcf0ec8536a0deaeb712ea347fe8dc56cf4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core/cheese.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
