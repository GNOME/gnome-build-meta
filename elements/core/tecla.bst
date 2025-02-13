kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 48.alpha-5-g5066d0273c8dfc68c93d3663fd0251d77e298b9f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
