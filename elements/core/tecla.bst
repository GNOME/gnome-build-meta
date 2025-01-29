kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 48.alpha-1-g5664baee20d7be65a35f2143aa71e3260fccb241

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
