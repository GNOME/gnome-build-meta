kind: meson

sources:
- kind: git_tag
  url: gnome:tecla.git
  track: main
  ref: 45.beta-7-ga1722cf0d1cf6aa12e32ec30f42b377251e43891

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
