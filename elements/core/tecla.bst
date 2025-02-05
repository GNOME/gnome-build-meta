kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/48/tecla-48.alpha.tar.xz
  ref: 732f96ae27c74be6fcda5f967b784b3427f33e23eb9e92dd2be309ca37bf7d55
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
