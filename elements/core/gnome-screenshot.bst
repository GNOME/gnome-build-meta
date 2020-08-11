kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/3.37/gnome-screenshot-3.37.90.tar.xz
  ref: 7a39cc7847a482fa9aad989ce65df0ef5ee9ef79aced75d1931b7e9e86c10f13
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- core-deps/libhandy.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
