kind: meson

sources:
- kind: git_tag
  url: gnome:d-spy.git
  track: main
  ref: 1.6.0-12-gb6cbfcee2c34870645a9aebd046f9946fb0388ff

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
