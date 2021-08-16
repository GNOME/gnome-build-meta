kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/40/baobab-40.0.tar.xz
  ref: a6aeaa2c327a997fe0d5f443ce95b785e2ba6e338fb0a026cb7dc7d7d688d1a7
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
