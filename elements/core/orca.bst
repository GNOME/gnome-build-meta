kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/48/orca-48.1.tar.xz
  ref: 66c6f09822149da243a4633a7d84a7b1dbaaf14534a9feb9df2bfe01a505178a
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
