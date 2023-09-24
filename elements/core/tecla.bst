kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 45.0-6-g45e199bc512d4db89130fc8f9baba61b84f254d0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
