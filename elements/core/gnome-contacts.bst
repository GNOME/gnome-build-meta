kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/41/gnome-contacts-41.0.tar.xz
  ref: 63e3149b5d1475b7a2698005bb5f750f3c80a735717160e39df8cfdfebfccdf0
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
