kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 47.rc-24-g1934882b46e4ff000d905eaee71b2eb7f1e8a681

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
