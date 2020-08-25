kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.37/gnome-contacts-3.37.2.tar.xz
  ref: 1d3469d5e90f23d129d1276b2f9b885459f3d7b43054cd09759b85ac76c918b4
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
