kind: meson

sources:
- kind: git_tag
  url: gnome:tecla.git
  track: main
  ref: 45.beta-10-g496d091f4b85511284ba11900007b733e25ad6aa

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
