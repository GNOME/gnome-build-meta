kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/40/gnome-contacts-40.beta.tar.xz
  ref: 85f2c8945e06be1efb7b4ea4b4776acc81e00ba2de180934fb33778a88901157
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
