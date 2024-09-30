kind: meson

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: main
  ref: 3.50.0-28-g9c72ec06ec5065cf1dce391cdf60b7708665f8cc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
