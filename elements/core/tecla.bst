kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/50/tecla-50.rc.tar.xz
  ref: 1fd6f4620957d45fe7286a9768f43a05263a6ce07a984d807adc0845b7d9a18f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
