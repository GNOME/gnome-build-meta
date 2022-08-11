kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-logs/43/gnome-logs-43.beta.tar.xz
  ref: 9da06e885865edd1bfbcf20b2d4e87c1500651729d656fff13bee936509395d4
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
