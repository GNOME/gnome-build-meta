kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/42/gnome-characters-42.0.tar.xz
  ref: 5da0ffb816f8a6b44f303744ca827a34080118c1c938d8d79af17b7fe67980f8
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
