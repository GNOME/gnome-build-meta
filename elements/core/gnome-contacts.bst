kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/43/gnome-contacts-43.0.tar.xz
  ref: 55b61df7e93f0abe1ffa465e18e3c5de4f49a90f268ea9d11edc86af06d071e1
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libportal.bst
- core/cheese.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
