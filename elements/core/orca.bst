kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/45/orca-45.2.tar.xz
  ref: f0f2c579a5beedfe5653bc7fe24481c4d6aac5dd1f71c1e7a208595f3c78ef76
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
