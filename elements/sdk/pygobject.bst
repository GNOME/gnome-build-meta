kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: master
  ref: 3.46.0-74-ga94e5e1ae47d0c5c5b5186feb8e9cfb14d55bf66

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
