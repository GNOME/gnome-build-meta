kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.35/gnome-contacts-3.35.90.tar.xz
  ref: d8adaf918cd676bdae4067d6325608f1c78b3b9b79137848c4f2322810da1a3e
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
