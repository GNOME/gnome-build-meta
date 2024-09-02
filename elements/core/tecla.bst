kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 47.rc-0-gdcc037cee25c79ecbfd12fa425d17acf627faa8b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
