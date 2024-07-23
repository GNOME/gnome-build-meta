kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.48.0-74-g896a8cd983a054e5031220f33d62ba335b151cd5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
