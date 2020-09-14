kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/3.38/gnome-screenshot-3.38.0.tar.xz
  ref: e556d3dd134d91344d2857c066434bfb64f7c85bdec7bc33739366b9bcd29fc0
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
