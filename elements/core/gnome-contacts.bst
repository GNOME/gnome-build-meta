kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.36/gnome-contacts-3.36.1.tar.xz
  ref: 7f1c9da81c28ecfe8d76beebb924bfb2f1e2ef86ff019544c8dc3833fd9b6261
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
