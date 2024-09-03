kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/47/tecla-47.rc.tar.xz
  ref: c4bef86744b8a08d6a2298975a6f33b31f0f6e645d6dd4552760c876437e1c94
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
