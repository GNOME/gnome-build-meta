kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 49.alpha-81-geaa3967cf7e1a8667730052bb01c64d7477a50b3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/dasbus.bst
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
