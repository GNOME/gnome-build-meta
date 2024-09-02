kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: ORCA_47_RC-13-g9e72d850ae3d3a5dc11b98c4ebff09e23e2546ce
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
