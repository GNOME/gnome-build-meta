kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.rc.tar.xz
  ref: 6d258d171b3098eec0c32cdaf87ca6e2f883f2c01fff84e826af629ccb237222
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
