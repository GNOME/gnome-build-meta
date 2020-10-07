kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.38/gnome-contacts-3.38.tar.xz
  ref: 7fc2ee689c1f39c2e6375eb760b94e1651ce4a828ad408206d3a03e133da19af
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
