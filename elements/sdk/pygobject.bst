kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.48.0-66-g82e7bb11aa075fcc123d9b79f88a2032692c3cea

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
