kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.0.tar.xz
  ref: b5080b74f4519017b1c75369e28d7d40d9fd59dd1fab723a6062e3657074030a
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
