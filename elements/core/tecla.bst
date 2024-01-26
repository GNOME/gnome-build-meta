kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 46.alpha-11-g5c320de3aa0989fd77cb398bdda439fea691f409

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
