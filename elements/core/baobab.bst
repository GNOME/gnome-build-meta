kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/3.34/baobab-3.34.0.tar.xz
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
