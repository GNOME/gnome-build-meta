kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 50.0-6-gf8cc96104d1ce3fa5adb1c23936c5fd8fe8be073

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
