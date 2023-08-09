kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/45/tecla-45.beta.tar.xz
  ref: cc72348da88555066e131900ec5790d86fb0a1fc5b2d0702a96fa32caa4377fa
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
