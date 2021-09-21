kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/41/baobab-41.0.tar.xz
  ref: cad6278d2dcc80c84b57105aa5bb58d8a30ce98d6fabd767519ddb86c857e855
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
