kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 45.0-1-g290f417b85ffbd2a4b698d46d2c47cd9038fbc7a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
