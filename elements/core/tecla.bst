kind: meson

sources:
- kind: git_tag
  url: gnome:tecla.git
  track: main
  ref: 45.beta-14-gfdaa4895fe64c4aa335cafc56c869c9029153cae

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
