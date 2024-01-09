kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/46/gnome-backgrounds-46.alpha.tar.xz
  ref: 21756676b4609557ca8c4fa9669bb131671bb33bac7741483fc5e3577bc49ef9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
