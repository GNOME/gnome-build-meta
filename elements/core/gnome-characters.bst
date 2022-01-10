kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/42/gnome-characters-42.alpha.tar.xz
  ref: db9b51d9ad0091122948c24b4beb0cf089e6e787f7b3aac114b3d232a9fb8f31
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
