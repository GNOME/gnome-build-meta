kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 46.alpha-0-ge7ff1a0f64ad55aee67d4ca931af72c9f1a10bdf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
