kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/46/tecla-46.0.tar.xz
  ref: 4a081eab867a5a8b09758991cad7645920f323aabca954408290fb6f44591b0f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
