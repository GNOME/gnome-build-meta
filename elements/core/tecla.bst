kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 46.alpha-1-gcf00793cbf54cd2cfb19f7fdd87ced0f4cdc3812

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
