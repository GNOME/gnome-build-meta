kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.49.0-1-gae40cf31c478ac849e728066e54f145b310efed7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
