kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.0.tar.xz
  ref: fc1f3044dfe2a9f420a026493e800e4c634cac814cfd47ee17fbcff86ab24ff4
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
