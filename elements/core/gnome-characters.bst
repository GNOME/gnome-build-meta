kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/42/gnome-characters-42.rc.tar.xz
  ref: 0f585bd5b6953699a2a5a7c1b18a4d99b44b7902a492622178aa5d2c3bc03c63
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
