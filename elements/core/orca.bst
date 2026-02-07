kind: meson

sources:
- kind: tar
  url: gnome_downloads:orca/50/orca-50.beta.7.tar.xz
  ref: e8b42e406b6064b5edab5e8951442d96fed327744b0130e4675c3b6d3a4979d6
build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/brltty.bst
- core-deps/dasbus.bst
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
