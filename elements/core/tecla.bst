kind: meson

sources:
- kind: git_tag
  url: gnome:tecla.git
  track: main
  ref: 45.beta-38-g6f80bd3f8ec86058ca5c9a9ac4ed60c500ef28f9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
