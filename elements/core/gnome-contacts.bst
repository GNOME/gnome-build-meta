kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.38/gnome-contacts-3.38.1.tar.xz
  ref: c96dce19de25d99a219bd52dfff9746226663d0d99d4506d570c2ad979035843
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
