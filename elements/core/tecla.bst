kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/47/tecla-47.0.tar.xz
  ref: 0790b99ec29137a54b546c510661a99aa6f039c8d75f10c08e928682c0804fe5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
