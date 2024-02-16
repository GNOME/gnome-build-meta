kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 46.beta-4-g214e222e960b11f72492961f358ba4fd707dd000

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
