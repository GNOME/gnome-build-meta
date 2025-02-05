kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 48.alpha-2-gbae7c4dbe6753a692dd3ef285941bfc417ba0f87

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
