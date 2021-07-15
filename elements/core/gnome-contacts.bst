kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/40/gnome-contacts-40.0.tar.xz
  ref: c9de6f3f28d84653eda81c63a40f0f5c931ad52c324ff5f9fe4d15c3612f4f70
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
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
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
