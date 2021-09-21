kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/41/gnome-characters-41.0.tar.xz
  ref: e129eca93d0099490bc2bfe6437e685fd9855e264b32fb918c0e58ee6aac867b
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
