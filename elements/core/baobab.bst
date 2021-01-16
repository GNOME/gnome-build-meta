kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/3.38/baobab-3.38.0.tar.xz
  ref: 048468147860816b97f15d50b3c84e9acf0539c1441cfeb63703d112e8728329
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
