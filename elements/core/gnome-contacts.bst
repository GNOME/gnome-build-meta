kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/3.36/gnome-contacts-3.36.2.tar.xz
  ref: be894724ac9530c30f7d02c663ce82f83b9b6969327fef5a74b9231fd7011411
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libhandy-0.bst
- core/cheese.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
