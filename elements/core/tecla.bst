kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/49/tecla-49.rc.tar.xz
  ref: 5d12c80e86549d50f0991812759f4f53f42088d0eaeb428dd11480e60ae5d76a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
