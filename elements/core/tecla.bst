kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/48/tecla-48.rc.tar.xz
  ref: 63fb075a67c6433bff0f925f8266c6bdf94b5606988e9108f519dfd8dca428df
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
