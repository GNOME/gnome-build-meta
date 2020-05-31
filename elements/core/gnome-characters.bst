kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/3.34/gnome-characters-3.34.0.tar.xz
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
