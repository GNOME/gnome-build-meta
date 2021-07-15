kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/40/gnome-characters-40.0.tar.xz
  ref: 0a62f5fd56592d0f3eb7be4b132db796c998d7be08ed67e4bf7f059138515d7c
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
