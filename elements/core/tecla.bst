kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/46/tecla-46.alpha.tar.xz
  ref: 788b9d5548144e9e8604e0ec6ab4a99bb386ef42290a6849606b4d466b4b5f5c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
