kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/42/baobab-42.0.tar.xz
  ref: 4b1aabe6bab1582b3fea79a2829bce7f2415bb6e5062f25357aeedd5317a50dc
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
