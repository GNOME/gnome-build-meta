kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/43/gnome-characters-43.0.tar.xz
  ref: a685b9cbf93545ed391168c41c9d8bf83785abbfb489675827ee7342471baac8
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
