kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/41/gnome-contacts-41.beta.tar.xz
  ref: 08e23dc7a0814852e0ce11f64201859de54cccbd6061550deb42afc2a1f07551
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
